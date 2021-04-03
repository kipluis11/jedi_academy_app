class SessionsController < ApplicationController

    def new
    end


    def destroy
        session.delete[:user_id]
        redirect '/'
    end

    def create
       @user = User.find_by(username: params[:user][:username])
       if @user.try(:authenticate, params[:user][:password])
        session[:user_id] = @user.id
        redirect_to @user
       else
        flash[:error] = "I sense a disturbance in the force, your credentials didn't meet criteria.  Please focus and try to enter a valid username and password"
        redirect_to login_path
       end
    end

end
