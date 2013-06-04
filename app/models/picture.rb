class Picture < ActiveRecord::Base
  attr_accessible :achievement_id, :title, :url, :user_id, :comments_attributes
  mount_uploader :url, PictureUploader

  belongs_to :user
  belongs_to :achievement
  has_many :comments, :dependent => :destroy

  accepts_nested_attributes_for :comments
end
