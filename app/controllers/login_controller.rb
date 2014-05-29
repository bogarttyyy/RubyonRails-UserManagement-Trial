class LoginController < ApplicationController
	def index
		@login = Login.all
	end

	def new

	end

	def create
		# render plain: params[:login].inspect
		@login = Login.new(login_params)

		@login.save
		redirect_to @login
	end

	def show
		@login = Login.find(params[:id])
	end

	def login
		if user = User.authenticate(params[:username], params[:password])
			# Save the user ID in the session so it can be used in
			# subsequent requests
			session[:current_user_id] = user.id
			redirect_to root_url
    	end
	end

	def logout
		# Remove the user id from the session
		@_current_user = session[:current_user_id] = nil
    	redirect_to root_url
	end

	private
		def login_params
			params.require(:login).permit(:username, :password)
		end
end
