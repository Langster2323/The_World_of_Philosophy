class UsersController < ApplicationController
  def show
    if User.exists?(params[:id])
      render locals: { user: user.find(params[:id])}
    else
      render html: "Not Found", status: 404
    end
  end

  def new
    render locals: {
      user: User.new
    }
  end

  def create
    user = User.new(user_params)
    if user.save
      redirect_to root
    else
      render :new
    end
  end

  def edit
    render locals: {
      user: User.find(params[:id])
    }
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      redirect_to root
    else
      render :edit
    end
  end

  def destroy
    if user.delete
      flash[:notice] = "User deleted"
      redirect_to root
    else
      flash[:alert] = "Could not be deleted due to errors"
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password_digest)
  end
end
