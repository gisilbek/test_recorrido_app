class Event < ApplicationRecord
  belongs_to :contract

  validates :name, presence: true
  validates :date, presence: true
  validates :personal, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true

  enum status: { Ernesto: 1, Barbara: 2, Benjamin: 3 }
end
