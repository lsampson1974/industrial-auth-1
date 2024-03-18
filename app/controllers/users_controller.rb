class UsersController < ApplicationController
  before_action :set_user, only: %i[ show liked feed followers following discover ]
  before_action :ensure_user_is_authorized, only: [:show, :feed, :discover]

  private

    def set_user
      if params[:username]
        @user = User.find_by!(username: params.fetch(:username))
      else
        @user = current_user
      end
    end

    def ensure_user_is_authorized
      if !UserPolicy.new(current_user, @user).show?
        raise Pundit::NotAuthorizedError, "not allowed"
      end
    end
      

    
end
