# frozen_string_literal: true
class ListNodesController < ApplicationController
  before_action :authenticate_user!

  layout proc { |controller| controller.request.xhr? ? false : 'appfixed' }

  def move_to
    item_id = record_id(params[:item])
    list_id = record_id(params[:list])
    position = params[:index].to_i + 1

    item = ListNode.find(item_id)
    item.move_to(list_id, position)
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  def flatten
    node = ListNode.find(params[:id].to_i)
    node.parent.flatten(node)

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

    cookies[:playing] = @playdata ? { value: @playdata, expires: 7.days.from_now } : nil

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

  def index
    @list_node = ListHead.my(current_user).playing.all.map(&:list_node).first

    @node_id = @list_node.id
    subtree = ListNode.includes(:listable).ordered.subtree_of(@node_id).all
    @nodetree = NodeTree.new(subtree)
  end

  # DELETE /list_nodes/1
  # DELETE /list_nodes/1.json
  def destroy
    @list_node = ListNode.find(params[:id])
    @list_node.destroy
    @node_id = @list_node.id
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private

  def record_id(idstr)
    idstr.split('-')[-1].to_i if idstr
  end
end
