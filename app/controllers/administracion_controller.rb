class AdministracionController < ApplicationController
	before_filter :authenticate_user!
	before_filter :check_role_super

	def index
		@title = 'Administracion'
		if current_user.present?
			if current_user.first_name == ""
	      redirect_to fields_user_dashboard_index_path
	    else
	      render :index
	    end
	  else
	  	redirect_to root_path
	  end
	end

	private

	def check_role_super
		if current_user.role == "Administracion"
			return true
		else
			redirect_to root_path
		end
	end
end
