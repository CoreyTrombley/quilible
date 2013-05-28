describe "the signup process" do
  before :each do
    User.create!(:email => 'user@example.com', :password => 'password')
  end

  it "signs me in" do
    visit '/'
    fill_in :email, :with => 'user@example.com'
    fill_in :password, :with => 'password'
    fill_in :password_confirmation, :with => 'password'
    click_link 'Sign in'
    page.should have_content 'Success'
  end
end