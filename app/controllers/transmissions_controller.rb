class TransmissionsController < ApplicationController
  def index
    @patient = Patient.find(params[:patient_id])
    @transmissions = Transmission.where(patient: @patient).order(created_at: :desc).group_by{ |u| u.created_at.beginning_of_month }
    @transmission = Transmission.new
  end

  def create
    @transmission = Transmission.new(transmission_params)
    @patient = Patient.find(params[:patient_id])
    @transmission.patient = @patient
    @transmission.user = current_user
    @transmission.save
    redirect_to patient_transmissions_path(@patient)
  end

  def transmission_params
    params.require(:transmission).permit(:content)
  end
end
