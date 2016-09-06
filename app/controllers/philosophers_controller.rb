class PhilosophersController < ApplicationController
  def index
    render locals: {
      philosophers: Philosopher.all
    }
  end

  def show
    if Philosopher.exists?(params[:id])
      render locals: { philosopher: philosopher.find(params[:id])}
    else
      render html: "Not Found", status: 404
    end
  end
end
