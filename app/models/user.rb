class User < ApplicationRecord
  has_many :manaings
  has_many :projects, thorugh: :manaings
end
