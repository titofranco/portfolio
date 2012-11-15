class Project < ActiveRecord::Base
  attr_accessible :customer_name, :description, :duration, :status, :tags, :title
end
