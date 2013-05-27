class Achievement < ActiveRecord::Base
  attr_accessible :description, :points, :title
end
