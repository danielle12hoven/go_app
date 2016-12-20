class HomeController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @monument = User.find_by(id: params[:id])
  end


  def create
    User.create(name: params[:email],
                  id: params[:id]
                  )
        # redirect_to "/home"
  end


  def delete
    User.delete(params[:id])
  end


  # def update
  #     User.find_by(id: params[:id]).update(user_params)
  #     # redirect_to "/home/"
  # end

  # def user_params
  #   params.require(:user).permit(:id)
  # end

  def edit
    @user = User.find_by(id: params[:id])
  end


