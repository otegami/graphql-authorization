class Member < ApplicationRecord
  has_many :assignings
  has_many :projects, through: :assignings

  validates :name, presence: true
  validates :address, presence: true
end
