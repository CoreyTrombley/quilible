require "spec_helper.rb"

describe "User Score" do
  before "Create/Login" do
    User.create!(email:"test@test.com", password:"password", password_confirmation:"password")
    visit("/users/sign_in")
    fill_in :user_email, with:"test@test.com"
    fill_in :user_password, with:"password"
    click_button "Sign in"
  end
  context "Achievement Points" do
    context "adding points to score" do
      it "should increase the users score by X points" do
        visit("/achievements")
        click "Complete Achievement"
      end
    end
  end
end