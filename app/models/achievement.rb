# == Schema Information
#
# Table name: achievements
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  points      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Achievement < ActiveRecord::Base
  attr_accessible :description, :points, :title

  has_many :comments
  has_many :pictures
end
