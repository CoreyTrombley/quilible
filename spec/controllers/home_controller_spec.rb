require 'spec_helper'

describe HomeController do
  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET '/profile'" do
    it "should require a login" do
      visit("/profile")
      page.has_content? "You need to sign in or sign up before continuing."
    end
  end

  describe "GET root path" do
    it "return http success" do
      assert_recognizes({:controller => "home", :action => "index"}, {:method => "get", :path => "/"})
    end
  end
end
