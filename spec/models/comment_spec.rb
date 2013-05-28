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

require 'spec_helper'

describe Comment do
  it "should create a comment" do
    Comment.create!
    expect(Comment.all.count).to eql(1)
  end
  it "should belong to a user" do
    user = User.create!(:email => Faker::Internet.email, :password => "password")
    comment = Comment.create!(:user_id => 1)
    expect(comment.user.id).to eql(1)
  end
  describe "should belong to an Achievement" do
    it "should have an association" do
      Achievement.create!
      comment = Comment.create!(:achievement_id => 1)
      expect(comment.achievement.id).to eql(1)
    end
  end

end
