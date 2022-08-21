class GraphqlPolicy
  RULES = {
    project_manager: {
      Types::QueryType => %i[
        projects
      ],
      Types::AssignedMemberType => ['*'],
      Types::ProjectType => ['*']
    },
    chief_project_manager: {
      Types::QueryType => %i[
        projects
        members
      ],
      Types::AssignedMemberType => ['*'],
      Types::MemberType => ['*'],
      Types::ProjectType => ['*'],
    }
  }.with_indifferent_access

  def self.guard(type, field)
    ->(_obj, _args, _ctx) { true } if type.introspection?
    ->(_obj, _args, ctx) do
      rule = RULES.dig(ctx[:current_user].role, type)

      return false if rule.nil?
      rule.include?('*') || rule.include?(field)
    end
  end
end
