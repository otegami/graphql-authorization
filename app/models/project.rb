class Project < ApplicationRecord
  has_many :manaings
  has_many :users, through: :manaings

  has_many :assigings
  has_many :members, through: :assigings

  validates :name, presence: true
  validates :description, presence: true
end
