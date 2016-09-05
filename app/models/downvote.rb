class Downvote < ApplicationRecord
  belongs_to :user
  belongs_to :philosopher
end
