class UpvotesController < ApplicationController
  #Look over this again...
  def create
    upvote = Upvote.new(upvote_params)
    if upvote.save
      redirect_to :back
    else
      render :new
    end

    def destroy
      if upvote.delete
        redirect_to :back
      else
        flash[:alert] = "That's odd... like couldn't be placed."
      end
    end
  end

  private
  def upvote_params
    params.require(:upvote)
  end
end
