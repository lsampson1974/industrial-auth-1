class FollowRequestPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

attr_reader :user

def initialize(user, record)
  @user = user
  @record = record
end

def index?
  true
end

def show?
  true
end

def create?
  true
end

def new?
  create?
end

def update?
  true
end

def edit?
  update?
end

def destroy?
 
  true

end


def resolve
  raise NotImplementedError, "You must define #resolve in #{self.class}"
end

  private

  attr_reader :user, :scope
end
