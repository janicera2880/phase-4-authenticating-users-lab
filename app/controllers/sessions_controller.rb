class SessionsController < ApplicationController
    #Will return the logged in user
    #sets user ID in the session
    def create
    user = User.find_by(username: params[:username])
        session[:user_id] = user.id
        render json: user
    end
    #deletes the user ID from the session
    def destroy
        session.delete :user_id
        head :no_content
    end

end
