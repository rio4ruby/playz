# frozen_string_literal: true
class AudioFilesController < ApplicationController
  layout proc { |controller| controller.request.xhr? ? false : 'application' }
  respond_to :js

  def add
    @id = params[:id]
    list_node = current_user.list_heads.playing.first.list_node
    new_node = AudioFile.find(@id).create_list_node(list_node)
    @node_id = new_node.id
    subtree = ListNode.includes(:listable).ordered.subtree_of(@node_id).all
    @nodetree = NodeTree.new(subtree)
    render js: 'add'
  end
end
