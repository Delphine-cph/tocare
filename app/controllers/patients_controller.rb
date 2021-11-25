class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def age
    @patient = Patient.age
  end
end
