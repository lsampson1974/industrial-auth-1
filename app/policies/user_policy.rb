class UserPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
       scope.all
    end
  end

  def index?
    true
  end

  def feed?
    true
  end

  def discover?
    true
  end


end
