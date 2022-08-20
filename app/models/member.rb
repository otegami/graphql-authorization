class Member < ApplicationRecord
  has_many :assigings
  has_many :projects, thorugh: :assigings
end
