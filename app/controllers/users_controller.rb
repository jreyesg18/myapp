class UsersController < ApplicationController

  before_action :authenticate_user!, only: [:show]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end

  end

  private
  def user_params
    params.require(:user).permit(:admin, :nombre, :apellidop, :apellidom, :rut, :cargo)
  end


end
