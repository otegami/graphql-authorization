class Project < ApplicationRecord
  has_many :managings
  has_many :users, through: :managings

  has_many :assignings
  has_many :members, through: :assignings

  validates :name, presence: true
  validates :description, presence: true
end
