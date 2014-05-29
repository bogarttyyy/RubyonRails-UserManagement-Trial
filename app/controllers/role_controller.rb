class RoleController < ApplicationController
	def index
		
	end

	def new
		
	end

	def edit
		@role = Role.find(params[:id])
	end

	def update
		@role = Role.find(params[:id])

		if @role = update(role_params)
			redirect_to login_path(current_user.id)
		else
			render 'edit'
		end
	end

	def create
		# render plain: params[:role].inspect
		@role = Role.new(role_params)

		@role.save
		redirect_to @role
	end

	def save
		@role = Role.new(role_params)

		@role.save
		redirect_to login_path(current_user.id)
	end

	def show
		@role = Role.find(params[:id])
	end
	def destroy
		@role = Role.find(params[:id])
		@role.destroy

		redirect_to login_path(current_user.id)
	end

	private
		def role_params
			params.require(:role).permit(:roletype)
		end
end
