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
    
  end

  def update
    
  end

  def delete
  end

  def users_params
    params.require(:user).permit(:name, :phone, :email, :birthdate)
  end
end
