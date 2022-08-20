module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :projects, [ProjectType], null: false
    def projects
      Project.all
    end
  end
end
