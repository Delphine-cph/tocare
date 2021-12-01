class ReplacementsController < ApplicationController
  def index
    # @user.where(@replacement.start_date >= user.start_date && @replacement.end_date <= @user.end_date)
    @users = User.where(arrondissement: current_user.arrondissement)
                 .where.not(id: current_user.id)

    @replacements = Replacement.where(owner: current_user).group_by(&:user)
    ## IF FILTER REPLACEMENTS BASED ON DATES
    # @replacements = Replacement.where("start_date >= ?", params[:start_date])
    #                            .where("end_date <= ?", params[:end_date])
    # if @replacements.empty?
    #   flash[:notice] = 'Pas de correspondance trouvée'

    # end
  end
#se connecter pour faire remplacement
# afficher les remplacements
# les valider ou les refuser

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
    replacement.owner = current_user
    replacement.user = User.where.not(id: current_user.id).sample
    replacement.save!
    end
    redirect_to replacements_path
  end

  def status_accepted
    # 1. Je récupère tous les replacements du current user pour le owner_id
    @replacement = Replacement.where(user: current_user)

    # 2. Pour chaque replacement, j'update le statut
    @replacement.each do |replacement|
      replacement.update(status: 1)
    end
    redirect_to user_path(current_user)
  end



  # 2. stocker dans une variable date de debut et de fin
  # 3. for each care recuperer date puis trouver toutes les dates

  private

  def replacement_params
    params.require(:replacement).permit(:start_date, :end_date, :status)
  end
end
