class ReplacementsController < ApplicationController

  def index
    @patient = Patient.find(patient_params[:id])
  end

end
