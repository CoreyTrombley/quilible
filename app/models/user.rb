class User < ActiveRecord::Base
  attr_accessible :date_of_birth, :gender, :user_name

  has_many :comments
end
