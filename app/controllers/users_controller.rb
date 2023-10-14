class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save!

    redirect_to activities_user_path(@user)
  end

  def activities
    @user = User.find(params[:id])
    @activities = Activity.where(user_id: @user)
    teste 
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end
end
