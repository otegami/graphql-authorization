module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :users, [UserType], null: false
    def users
      User.all
    end

    field :projects, [ProjectType], null: false
    def projects
      ProjectPolicy::Scope.new(context[:current_user], Project).resolve
    end

    field :members, [MemberType], null: false
    def members
      Member.all
    end
  end
end
