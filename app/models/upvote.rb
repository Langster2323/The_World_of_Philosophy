class Upvote < ApplicationRecord
  belongs_to :user
  belongs_to :philosopher, counter_cache: true
end
