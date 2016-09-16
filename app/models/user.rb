class User < ApplicationRecord
  include Clearance::User

  has_many :upvotes
  has_many :downvotes

  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
