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

	private
		def login_params
			params.require(:login).permit(:username, :password)
		end
end
