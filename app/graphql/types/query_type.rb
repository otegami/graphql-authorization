module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :projects, [ProjectType], null: false
    def projects
      Project.all
    end

    field :members, [MemberType], null: false
    def members
      Member.all
    end
  end
end
