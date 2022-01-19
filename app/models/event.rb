# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :contract

  validates :name, presence: true
 # validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :personal, presence: true
  validates :contract, presence: true

  enum personal: { Ernesto: 1, Barbara: 2, Benjamin: 3 }

  # def start_time
  #   start_time
  # end

  # def end_time
  #   end_time
  # end
end
