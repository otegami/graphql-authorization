class Project < ApplicationRecord
  has_many :manaings
  has_many :users, through: :manaings

  has_many :assigings
  has_many :members, through: :assigings
end
