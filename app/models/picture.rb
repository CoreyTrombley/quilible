class Picture < ActiveRecord::Base
  attr_accessible :achievement_id, :title, :url, :user_id
  mount_uploader :url, PictureUploader

  belongs_to :user
  belongs_to :achievement
end
