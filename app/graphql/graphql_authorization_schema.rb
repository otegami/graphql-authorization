class GraphqlAuthorizationSchema < GraphQL::Schema
  # [NOTICE]
  # graphql-ruby のバージョンをダウングレードした都合上
  # エラーが出ているためコメントアウトしています。最新バージョンでは問題なく稼働します
  # mutation(Types::MutationType)
  query(Types::QueryType)

  use GraphQL::Guard.new(
    policy_object: GraphqlPolicy,
    not_authorized: ->(type, field){ GraphQL::ExecutionError.new("Not authorized to access #{type}.#{field}") }
  )

  # For batch-loading (see https://graphql-ruby.org/dataloader/overview.html)
  use GraphQL::Dataloader

  # GraphQL-Ruby calls this when something goes wrong while running a query:
  def self.type_error(err, context)
    # if err.is_a?(GraphQL::InvalidNullError)
    #   # report to your bug tracker here
    #   return nil
    # end
    super
  end

  # Union and Interface Resolution
  def self.resolve_type(abstract_type, obj, ctx)
    # TODO: Implement this method
    # to return the correct GraphQL object type for `obj`
    raise(GraphQL::RequiredImplementationMissingError)
  end

  # Relay-style Object Identification:

  # Return a string UUID for `object`
  def self.id_from_object(object, type_definition, query_ctx)
    # For example, use Rails' GlobalID library (https://github.com/rails/globalid):
    object.to_gid_param
  end

  # Given a string UUID, find the object
  def self.object_from_id(global_id, query_ctx)
    # For example, use Rails' GlobalID library (https://github.com/rails/globalid):
    GlobalID.find(global_id)
  end
end
