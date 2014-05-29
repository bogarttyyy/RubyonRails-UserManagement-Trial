class RoleController < ApplicationController
	def index
		
	end

	def new
		
	end

	def create
		# render plain: params[:role].inspect
		@role = Role.new(role_params)

		@role.save
		redirect_to @role
	end

	def show
		@role = Role.find(params[:id])
	end

	private
		def role_params
			params.require(:role).permit(:roletype)
		end
end
