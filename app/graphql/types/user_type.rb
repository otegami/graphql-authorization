# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :role, String, null: false
    field :projects, [ProjectType], null: false

    def projects
      object.chief_project_manager? ? Project.all : object.projects
    end
  end
end
