class ActivitiesController < ApplicationController
  def new()
    @user = User.find(params[:user_id])
    @activity = Activity.new
  end

  def create
    @user = 
    @activity = Activity.new(activity_params)
    @activity.save!

    redirect_to activities_user_path(@user)
  end

  def user_params
    params.require(:activity).permit(:title, :date, :time, :decription)
  end
end
