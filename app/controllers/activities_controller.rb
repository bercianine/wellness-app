class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
<<<<<<< HEAD
    @activities = Activity.all
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {activity: activity})
      }
=======
    if params[:query].present?
      @activities = Activity.search_by_name_and_location(params[:query])
    else
      @activities = Activity.all
>>>>>>> master
    end
  end

  def show
    @activity = Activity.find(params[:id])
    @markers = [{
        lat: @activity.latitude,
        lng: @activity.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {activity: @activity})
      }]
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user_id = current_user.id
    if @activity.save
      redirect_to activity_path(@activity)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:user_id, :name, :price, :location, :duration, :photo)
  end
end
