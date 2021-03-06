class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    record.user == user
  end

  def toolbox?
    true
  end

  def accept?
    record.user == user
  end

  def decline?
    record.user == user
  end

  def destroy_multiple?
    true
  end
end
