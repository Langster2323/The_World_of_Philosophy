class Work < ApplicationRecord
  belongs_to :philosopher
  
  validates :name, presence: true
  validates :date, presence: true
  validates :form, presence: true
end
