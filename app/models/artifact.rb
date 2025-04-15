class Artifact < ActiveRecord::Base
  attr_accessor :upload
  
  validates_presence_of :name, :upload
  validates_uniqueness_of :name
  validate :uploaded_file_size

  belongs_to :project

  MAX_FILESIZE = 10.megabytes

  private

  def uploaded_file_size
    if upload
      errors.add(:upload, "File size must be less than #{self.class::MAX_FILESIZE}") unless upload.size <= self.class::MAX_FILESIZE
    end  
  end
end
