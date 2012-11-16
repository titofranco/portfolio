class Picture < ActiveRecord::Base
  attr_accessible :caption, :file, :file_cache, :status, :subtype, :file_image, :feature_id, :feature_type
  belongs_to :feature, :polymorphic => true
  mount_uploader :file, FileUploader

  include Rails.application.routes.url_helpers

  def to_jq_upload
    {
      "name" => read_attribute(:file),
      "size" => file.size,
      "url" => file.url,
      "thumbnail_url" => file.thumb.url,
      "delete_url" => picture_path(:id => id),
      "delete_type" => "DELETE"
    }
  end

end
