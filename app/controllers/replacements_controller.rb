class ReplacementsController < ApplicationController

  def index
    @patient = Patient.find(patient_params[:id])
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
