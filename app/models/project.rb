class Project < ApplicationRecord
  has_many :manaings
  has_many :users, through: :manaings

  has_many :assignings
  has_many :members, through: :assignings

  validates :name, presence: true
  validates :description, presence: true
end
