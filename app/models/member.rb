class Member < ApplicationRecord
  has_many :assigings
  has_many :projects, through: :assigings

  validates :name, presence: true
  validates :address, presence: true
end
