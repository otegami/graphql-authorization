class Project < ApplicationRecord
  has_many :manaings
  has_many :users, thorugh: :manaings
end
