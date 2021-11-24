class ReplacementsController < ApplicationController

  def index
    # @user.where(@replacement.start_date >= user.start_date && @replacement.end_date <= @user.end_date)
    @user = User.first
    Remplacement.where("start_date >= ?", @user.start_date)
                .where("end_date <= ?", @user.end_date)
  end


  def new
     @replacement = Replacement.new
  end


  def create
    # 1. recuperer tous les patients du current user
    # 2. pour chaque patient je creer un replacement
    @user = current_user
    @user.patients
    @patients.each do |patient|
     Remplacement.create(replacement_params)
    end
    @replacement = Replacement.new(replacement_params)
    @replacement.user = current_user
    @replacement.patient = patient.id
    @replacement.save

    flash[:notice] = 'Votre demande de remplacement à bien etait prise en compte'
  end

  private
  def remplacement_params
    params.require(:replacement).permit(:user_id, :patient_id, :start_date, :end_date)
  end
end
