class Picture < ActiveRecord::Base
  attr_accessible :caption, :file, :file_cache, :status, :subtype, :file_image, :feature_id, :feature_type
  belongs_to :feature, :polymorphic => true
  mount_uploader :file, FileUploader
end
