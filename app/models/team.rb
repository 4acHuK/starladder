class Team < ApplicationRecord
  mount_uploader :logo, LogoUploader

  belongs_to :user
  has_many :registrations
  has_many :tournaments, through: :registrations

  validates :name, presence: true, uniqueness: true
end