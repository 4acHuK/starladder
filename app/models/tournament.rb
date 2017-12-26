class Tournament < ApplicationRecord
  has_many :registrations
  has_many :teams, through: :registrations

  validates :name, presence: true
end