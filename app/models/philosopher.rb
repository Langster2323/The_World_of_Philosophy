class Philosopher < ApplicationRecord
  has_many :upvotes
  has_many :downvotes
  has_many :works

  validates :name, presence: true
  validates :birthdate, presence: true
  validates :concentration, presence: true
  validates :origin, presence: true
  validates :wikipedia, presence: true
end
