require 'spec_helper'

describe User do
  it "should create a new user" do
    User.create!
    expect(User.all.count).to eql(1)
  end

  describe "has many comments" do
    it "should be able to create a new comment" do
      user = User.create!
      comment = Comment.create!(:user_id => 1)

      expect(user.comments.count).to eql(1)
    end
  end
end
