# == Schema Information
#
# Table name: comments
#
#  id             :integer          not null, primary key
#  body           :text
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  achievement_id :integer
#

class Comment < ActiveRecord::Base
  attr_accessible :body, :user_id, :achievement_id

  belongs_to :user
  belongs_to :achievement
end
