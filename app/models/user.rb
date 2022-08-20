class User < ApplicationRecord
  has_many :managings
  has_many :projects, through: :managings

  enum role: [ :project_manager, :chief_project_manager ]
end
