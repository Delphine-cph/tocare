class PatientsController < ApplicationController
  def index
    @patients = Patient.all.order(:last_name)
  end

  def show
    @patient = Patient.find(params[:id])
  end
end
