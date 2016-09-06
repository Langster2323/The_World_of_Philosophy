class WorksController < ApplicationController
  def index
    render locals: {
      works: Work.all
    }
  end

  def show
    if Work.exists?(params[:id])
      render locals: { work: work.find(params[:id])}
    else
      render html: "Not Found", status: 404
    end
  end
end
