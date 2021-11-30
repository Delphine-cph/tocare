class PatientsController < ApplicationController
  def index
    @patients = Patient.all
    Transmission.all.group_by{ |u| u.created_at.beginning_of_month }
  end

  def show
    @patient = Patient.find(params[:id])
    @transmission = Transmission.new
  end
end
