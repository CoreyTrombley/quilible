require "spec_helper"

describe Achievement do
  it "should have a table" do
    Achievement.create

    expect(Achievement.all.count).to eq(1)
  end
  it "has a title column" do
    achiev = Achievement.create(:title => "test", :description => "a test description", :points => 10)

    expect(achiev.title).to eq("test")
  end
end