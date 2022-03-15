class UsersController < ApplicationController
  def index
    articles = User.all
    render json: "users"
  end

  def create
    
  end

  def show
    
  end

  def update
    
  end

  def delete
  end
end
