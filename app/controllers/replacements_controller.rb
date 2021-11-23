class ReplacementsController < ApplicationController

  def index
    # @user.where(@replacement.start_date >= user.start_date && @replacement.end_date <= @user.end_date)
    @user = User.first
    Remplacement.where("start_date >= ?", @user.start_date)
                .where("end_date <= ?", @user.end_date)
  end

end
