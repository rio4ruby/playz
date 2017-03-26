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
    if @playdata
      cookies[:playing] = { :value => @playdata, expires: 7.days.from_now }
    else
      cookies[:playing] = nil
    end
  end
end
