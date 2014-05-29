class SessionsController < ApplicationController
    def new
	  	@user = Login.new
	end

	def create
	  	user = Login.authenticate(params[:username], params[:password])
	  	if user
	    	session[:user_id] = user.id
	    	redirect_to login_path(user.id), :notice => "Logged in!"
	  	else
    		flash.now.alert = "Invalid username or password"
	    	render "new"
	  	end
	end

	def destroy
	  	session[:user_id] = nil
	  	redirect_to root_url, :something => "Logged out!"
	end
end
