class ReplacementsController < ApplicationController

  def index
    # @user.where(@replacement.start_date >= user.start_date && @replacement.end_date <= @user.end_date)
    @replacements = Replacement.all
    ## IF FILTER REPLACEMENTS BASED ON DATES
    # @replacements = Replacement.where("start_date >= ?", params[:start_date])
    #                            .where("end_date <= ?", params[:end_date])
    # if @replacements.empty?
    #   flash[:notice] = 'Pas de correspondance trouvée'
    # end
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
     Remplacement.new
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
