class HomeController < ApplicationController

	def index
		@title = 'EPS MAJJ'
		if user_signed_in?
			redirect_to controller: 'dashboard', action: 'index'
  	end
	end

	def about_us
		@title = 'Acerca de nosotros'
	end

	def solutions
		@title = 'Soluciones'
	end

	def create_user
		@title = 'Crear Usuario'
	end

	def check_user_admin
		@user = User.where(email: params[:email_admin]).first
		if @user.present? && @user.role == "Administracion" && @user.pass_admin == params[:pass]
			render json: { can_create: true }
		else
			render json: { can_create: false }
		end
	end
end
