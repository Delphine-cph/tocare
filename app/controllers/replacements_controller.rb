class ReplacementsController < ApplicationController

  def index
    @replacement = Replacement.all
  end

end
