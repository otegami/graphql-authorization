# frozen_string_literal: true

module Types
  class AssignedMemberType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
  end
end
