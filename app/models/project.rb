class Project < ApplicationRecord
  has_many :manaings
  has_many :users, thorugh: :manaings

  has_many :assigings
  has_many :members, thorugh: :assigings
end
