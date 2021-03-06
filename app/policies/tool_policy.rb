class ToolPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def main?
    true
  end

  def create?
    return true
  end

  def update?
    record.user == user
    # - record: the tool passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
    record.user == user
  end

end
