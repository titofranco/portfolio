class Picture < ActiveRecord::Base
  attr_accessible :caption, :image, :image_cache, :status, :subtype, :remove_image
  belongs_to :feature, :polymorphic => true
  mount_uploader :image, ImageUploader
end
