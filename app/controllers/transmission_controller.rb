class TransmissionController < ApplicationController
  def index
    @transmissions = Transmission.all
  end
  def show
    @transmission = Transmission.find(params[:id])
  end
end
