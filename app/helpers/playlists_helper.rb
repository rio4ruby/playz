module PlaylistsHelper
def list_node_playdata_class(node)
  node.listable_type == 'AudioFile' ? "playdata" : nil
end

def list_node_playdata_data(node)
  "list_node-#{node.id}--audio_file-#{node.listable.id}--album-#{node.listable.album_id}" if node.listable_type == 'AudioFile'
end
end
