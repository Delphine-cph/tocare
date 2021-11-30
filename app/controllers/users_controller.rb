class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @pending_replacements_as_substitute = Replacement.where(user: current_user, status: nil).group_by(&:owner)
  end
end
