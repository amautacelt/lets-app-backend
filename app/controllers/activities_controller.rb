class ActivitiesController < ApplicationController

    def index
        @activities = Activity.all
        # render json: @activities, include: :user
        render json: @activities, include: :user

    end

    def show
        @activity = Activity.find(params[:id])
        render json: @activity
    end

    def create
        @activity = Activity.create(activity_params)
        render json: @activity
    end

    def update
        @activity = Activity.find(params[:id])
        @activity.update(activity_params)
        render json: @activity
    end

    def destroy
        @activity = Activity.find(params[:id])
        @activity.destroy
        # render json: "Activity {@activity.name} has been destroyed"
    end


    private

    def activity_params
        params.require(:activity).permit(:name, :description, :location, :date_time, :duration, :user_id)
        # params.require(:activity).permit(:name, :description, :location, :date_time, :duration)
    end

end