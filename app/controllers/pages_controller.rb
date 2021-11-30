class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]

  def home
  @replacements = current_user.owned_replacements.where(status: 1).group_by(&:user)
  end

end
