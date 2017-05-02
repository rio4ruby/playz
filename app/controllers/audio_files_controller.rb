# frozen_string_literal: true

class AudioFilesController < ApplicationController
  layout(proc { |controller| controller.request.xhr? ? false : 'application' })

  def add
    @id = params[:id]
    list_node = current_user.list_heads.playing.first.list_node
    new_node = AudioFile.find(@id).create_list_node(list_node)
    @node_id = new_node.id
    subtree = ListNode.includes(:listable).ordered.subtree_of(@node_id).all
    @nodetree = NodeTree.new(subtree)
    respond_to do |format|
      format.js
    end
  end
end
