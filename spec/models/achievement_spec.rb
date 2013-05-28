# == Schema Information
#
# Table name: achievements
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  points      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Achievement do
  it "should create an achievement" do
    Achievement.create!
    expect(Achievement.all.count).to eql(1)
  end
end
