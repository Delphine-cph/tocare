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

  def status_accepted
    @replacement.mark('remplacement accepté')
  end

  def status_decline
    @replacement.mark('remplacement refusé')
  end

  def new
    @replacement = Replacement.new
  end

  def create
    # 1. recuperer tous les patients du current user
    @user = current_user
    @patients = @user.patients
    @patients.each do |patient|
    replacement = Replacement.new(replacement_params)
      replacement.patient = patient
      replacement.user = current_user
      replacement.save
    end
  # 2. stocker dans une variable date de debut et de fin
  # 3. for each care recuperer date puis trouver toutes les dates

    redirect_to replacements_path

    flash[:notice] = 'Votre demande de remplacement à bien etait prise en compte'
  end

  private

  def replacement_params
    params.require(:replacement).permit(:start_date, :end_date)
  end
end
