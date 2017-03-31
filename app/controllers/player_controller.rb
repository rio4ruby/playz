# frozen_string_literal: true
class PlayerController < ApplicationController
  def simple
    @list_node = ListHead.my(current_user).playing.all.map(&:list_node).first

    @node_id = @list_node.id
    subtree = ListNode.includes(:listable).ordered.subtree_of(@node_id).all
    @nodetree = NodeTree.new(subtree)

    @playdata = cookies[:playing]
    unless @playdata && @nodetree.playdata_in_tree(@playdata)
      @playdata = @nodetree.create_playdata(@nodetree.first_audio_file_node)
    end
    cookies[:playing] = if @playdata
                          { value: @playdata, expires: 7.days.from_now }
                        end
  end
end
