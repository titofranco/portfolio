class Project < ActiveRecord::Base
  attr_accessible :customer_name, :description, :duration, :status, :tags, :title, :pictures_attributes
  has_many :pictures, :as => :feature
  accepts_nested_attributes_for :pictures, :reject_if => proc { |attributes| attributes['image'].blank? && attributes['image_cache'].blank? }
end
