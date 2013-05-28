class Achievement < ActiveRecord::Base
  attr_accessible :description, :points, :title

  has_many :comments
end
