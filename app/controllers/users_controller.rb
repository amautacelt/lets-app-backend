class UsersController < ApplicationController

    def index
        @users = User.all
        # render json: @users, include: :activities
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.create(
            username: params[:username],
            first_name: params[:first_name],
            last_name: params[:last_name],
            age: params[:age],
            # activity_id: params[:activity_id]
        )
        # render json: @user, include: :activity
        render json: @user
    end

end