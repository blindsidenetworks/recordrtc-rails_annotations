class Recording < ApplicationRecord
  include VideoUploader[:video]

  belongs_to :student

  validates_presence_of :title, :description, :video, :student_id

  # Make route URLs more obfuscated
  #def to_param
  #  name = video.id
  #  ext = name.length - ('.webm').length - 1
  #
  #  [id, name[0..ext]].join
  #end
end
