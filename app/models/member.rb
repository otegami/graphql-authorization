class Member < ApplicationRecord
  has_many :assigings
  has_many :projects, through: :assigings
end
