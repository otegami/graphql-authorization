class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      if user.chief_project_manager?
        scope.all
      else
        user.projects
      end
    end

    private

    attr_reader :user, :scope
  end
end
