class ReplacementsController < ApplicationController

  def index
    # @user.where(@replacement.start_date >= user.start_date && @replacement.end_date <= @user.end_date)
    @user = User.first
    Replacement.where("start_date >= ?", @user.start_date)
                .where("end_date <= ?", @user.end_date)
  end


  def new
     @replacement = Replacement.new
  end


  def create
    # 1. recuperer tous les patients du current user

    @user = current_user
    @patients = @user.patients
  # 2. stocker dans une variable date de debut et de fin
  # 3. for each care recuperer date puis trouver toutes les dates
  raise
    @patients.each do |patient|
      replacement = Replacement.new(replacement_params)
      replacement.user = current_user
      replacement.patient = patient.id

      users.cares

      replacement.save
    end
    redirect_to root_path

    flash[:notice] = 'Votre demande de remplacement à bien etait prise en compte'
  end

  private
  def replacement_params
    params.require(:replacement).permit(:start_date, :end_date)
  end
end
