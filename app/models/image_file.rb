class ImageFile < ApplicationRecord
  belongs_to :file_dir

  scope :midsize, lambda { 
    where(["image_files.columns < ? AND image_files.number_colors > ? ",325,1])
  }

  def filepath
    [self.file_dir.name,self.filename].join('/')
  end

  def fileurl
    self.filepath.sub('/srv/mp3/','')
  end

  def imageurl
    'http://media.kitatdot.net/image/' + URI.escape(self.fileurl)
    #['http://localhost/media',self.file_dir.name,self.filename].join('/')
  end
end
