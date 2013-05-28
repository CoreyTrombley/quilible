require 'spec_helper'

describe Achievement do
  it "should create an achievement" do
    Achievement.create!
    expect(Achievement.all.count).to eql(1)
  end
end
