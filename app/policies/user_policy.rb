class UserPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  attr_reader :current_user, :user

  def initialize(current_user, user)
    @current_user = current_user
    @user = user
  end

  def show?
    if current_user == @user || !@user.private? || current_user.leaders.include?(@user)
      true
    end
  end

 

end
