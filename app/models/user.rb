class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true
  
  has_many :tweets

  has_many :followers, :class_name => :Relationship, :foreign_key => "user_id"
  has_many :following, :class_name => :Relationship, :foreign_key => "follower_id"
end
