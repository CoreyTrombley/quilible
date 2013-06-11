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
  attr_accessible :description, :points, :title, :pictures_attributes

  has_many :comments, :through => :pictures
  has_many :pictures

  accepts_nested_attributes_for :pictures
end
