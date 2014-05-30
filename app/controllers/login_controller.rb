class LoginController < ApplicationController
	def index
		# if current_user
		# 	@login = Login.all
		# 	if current_user.id == params[:id]
		# 		if current_user.id == 1
		# 			@login = Login.all
		# 		else
		# 			@login = Login.find(params[:id])
		# 		end
		# 	end
		# else
		# 	redirect_to log_in_path, :notice => "Please login properly"
		# end
	end

	def new

	end

	def create
		# render plain: params[:login].inspect
		@login = Login.new(login_params)

		if @login.save
			redirect_to log_in_path
			session[:user_id] = nil
		else
			render 'create'
		end
		
	end

	def show
		if current_user
			if current_user.id == 1
				@login = Login.all
				@role = Role.all
			else
				@login = Login.find(current_user.id)
				# @role = Login.roles.find(current_user.id)
			end
		else
			session[:user_id] = nil
			redirect_to log_in_path, :notice => "Please login properly"
		end
	end

	private
		def login_params
			params.require(:login).permit(:username, :password)
		end
end
