# frozen_string_literal: true
class ListNodesController < ApplicationController
  before_action :authenticate_user!

  layout proc { |controller| controller.request.xhr? ? false : 'appfixed' }

  def move_to
    item_id = record_id(params[:item])
    list_id = record_id(params[:list])
    index = params[:index].to_i
    item = ListNode.find(item_id)

    from_list_id = item.parent_id

    if from_list_id != list_id
      item.remove_from_list
      item.parent_id = list_id
    end
    item.remove_from_list
    item.insert_at(index + 1)

    # from_list = ListNode.find(from_list_id)

    respond_to do |format|
      format.json { head :no_content }
    end
  end

  def move_after
    item_id = record_id(params[:item])
    list_id = record_id(params[:list])
    after_id = record_id(params[:after])

    item = ListNode.find(item_id)
    after = ListNode.find(after_id) if after_id

    if item.parent_id != list_id
      item.remove_from_list
      item.parent_id = list_id
    end
    item.remove_from_list
    item.insert_at(after ? after.position : 1)
  end

  def flatten
    node = ListNode.find(params[:id].to_i)
    pos = node.position
    child_ids = node.child_ids
    n_holes = child_ids.size - 1
    node.siblings.where(['position > ?', pos]).update_all("position = (position + #{n_holes})")
    to_list_id = node.parent_id
    Rails.logger.info("flatten: pos = #{pos}")

    node.children.each_with_index do |n, i|
      n.parent_id = to_list_id
      n.position = pos + i
      n.save!
      Rails.logger.info("  flatten: i=#{i} insert_at=#{pos + i}")
    end
    node.delete

    respond_to do |format|
      format.js { head :ok }
    end
  end

  def playlist_playable_items
    @active_id = record_id(params[:active_id])
    @list_node = ListHead.my(current_user).playing.all.map(&:list_node).first
    @node_id = @list_node.id
    subtree = ListNode.includes(:listable).ordered.subtree_of(@node_id).all
    @nodetree = NodeTree.new(subtree)

    @playdata = cookies[:playing]
    unless @playdata && @nodetree.playdata_in_tree(@playdata)
      @playdata = @nodetree.create_playdata(@nodetree.first_audio_file_node)
    end

    cookies[:playing] = @playdata ? { value: @playdata, expires: Time.now + 3600 * 24 * 7 } : nil

    respond_to do |format|
      format.html { render partial: 'list_nodes/playlist_playable_items', locals: { nodetree: @nodetree, node_id: @node_id, playing_playdata: @playdata } }
    end
  end

  def add_to_playing
    @recs = elem_id_to_records(params[:elem_id])
    list_node = current_user.list_heads.playing.first.list_node

    new_node = @recs[-1].create_list_node_all(list_node)
    @node_id = new_node.id
    subtree = ListNode.includes(:listable).ordered.subtree_of(@node_id).all
    @nodetree = NodeTree.new(subtree)

    respond_to do |format|
      format.js
    end
  end

  def node_sort_key(node, id_to_pos)
    ids = node.ancestry ? node.ancestry.split('/') : []
    poses = ids.map { |id| id_to_pos[id.to_i] }
    poses << node.position
    (0..2).map { |i| poses[i] ? poses[i] : 0 }
  end

  def index
    # @list_nodes = ListHead.my(current_user).all.map(&:list_node)

    # @list_nodes = ListNode.roots.joins(:list_heads).where(["list_heads.user = ?",current_user]).all

    @list_node = ListHead.my(current_user).playing.all.map(&:list_node).first

    @node_id = @list_node.id
    subtree = ListNode.includes(:listable).ordered.subtree_of(@node_id).all
    @nodetree = NodeTree.new(subtree)
  end

  def show
    # @list_node = ListNode.subtree_of(params[:id])
    @list_node = ListNode.find(params[:id])
  end

  # PUT /list_nodes/1
  # PUT /list_nodes/1.json
  def update
    @list_node = ListNode.find(params[:id])

    respond_to do |format|
      if @list_node.update_attributes(params[:list_node])
        format.html { redirect_to @list_node, notice: 'List node was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @list_node.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_nodes/1
  # DELETE /list_nodes/1.json
  def destroy
    @list_node = ListNode.find(params[:id])
    @list_node.destroy
    @node_id = @list_node.id
    respond_to do |format|
      # format.js
      # format.html { redirect_to list_nodes_url }
      format.json { head :no_content }
    end
  end

  private

  def record_id(idstr)
    idstr.split('-')[-1].to_i if idstr
  end
end
