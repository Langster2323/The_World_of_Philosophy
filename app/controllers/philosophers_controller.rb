class PhilosophersController < ApplicationController
def index
    @philosophers = Philosopher.all
    @hash = Gmaps4rails.build_markers(@philosophers) do |philosopher, marker|
  marker.lat philosopher.latitude
  marker.lng philosopher.longitude
  end
end

  def show
    if Philosopher.exists?(params[:id])
      render locals: { philosopher: philosopher.find(params[:id])}
    else
      render html: "Not Found", status: 404
    end
  end
end
