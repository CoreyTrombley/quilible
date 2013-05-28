class Comment < ActiveRecord::Base
  attr_accessible :body, :user_id, :achievement_id

  belongs_to :user
  belongs_to :achievement
end
