class Work < ApplicationRecord
  validates :name, presence: true
  validates :date, presence: true
  validates :form, presence: true
end
