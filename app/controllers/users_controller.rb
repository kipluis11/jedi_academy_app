class UsersController < ApplicationController

    def index # I wan this to be a list of All users
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id 
            redirect_to @user
        else
            render :new
        end
    end

    def show #I want this to show current user 
        @users = User.find_by(params[:id])
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
