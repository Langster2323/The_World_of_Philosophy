class DownvotesController < ApplicationController
  #Look over this again...
  def create
    downvote = Downvote.new(downvote_params)
    if downvote.save
      redirect_to :back
    else
      render :new
    end

    def destroy
      if downvote.delete
        redirect_to :back
      else
        flash[:alert] = "That's odd... like couldn't be placed."
      end
    end
  end

  private
  def upvote_params
    params.require(:downvote)
  end
end
