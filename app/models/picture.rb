class Picture < ActiveRecord::Base
  attr_accessible :caption, :file, :file_cache, :status, :subtype, :file_image
  belongs_to :feature, :polymorphic => true
  mount_uploader :file, FileUploader
end
