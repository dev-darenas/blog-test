class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def create
    user = User.new(users_params)
    user.save
    render json: user
    
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.update(users_params)
    user.save
    render json: user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy

    head :ok

  end

  def users_params
    params.require(:user).permit(:name, :phone, :email, :birthdate)
  end
end
