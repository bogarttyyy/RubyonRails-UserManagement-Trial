class LoginRoleController < ApplicationController
	def new
		
	end

	def create
		# if current_user
		# 	if current_user.id == 1
		# 		@login = Login.find(current_user.id)
		# 		@role = Role.where(:id => params[:role_select])
		# 		@login.roles << @role
		# 	else
		# 		session[:user_id] = nil
		# 		redirect_to root_path, :notice => 'Please login properly'
		# 	end
		# else
		# 	session[:user_id] = nil
		# 	redirect_to root_path, :notice => 'Please login properly'
		# end
	end

	def edit
		@login = Login.find(params[:id])
	end

	def update
		if current_user
			if current_user.id == 1
				@login = Login.find(params[:parent_id])
				@role = Role.where(:id => params[:role_select])
				@login.roles.destroy_all
				@login.roles << @role

				redirect_to login_path(current_user.id)
			else
				session[:user_id] = nil
				redirect_to login_path, :notice => 'Please login properly'
			end
		else
			session[:user_id] = nil
			redirect_to login_path, :notice => 'Please login properly'
		end
	end

	def show
		@login = Login.find(params[:id])
	end
end
