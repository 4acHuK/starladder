class User < ApplicationRecord
  has_one :team, dependent: :destroy

  validates :email, :name, presence: true, uniqueness: true

  def self.find_or_create_from_omniauth(auth_hash)
    User.where(email: auth_hash.extra.raw_info.email, starladder_uid: auth_hash.uid, name: auth_hash.extra.raw_info.nick).first_or_create
  end
end