# frozen_string_literal: true

module Types
  class MemberType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :address, String, null: false
  end
end
