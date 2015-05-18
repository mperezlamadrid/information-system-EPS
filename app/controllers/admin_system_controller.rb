class AdminSystemController < ApplicationController
	before_filter :authenticate_user!
	before_filter :can_edit_database

	def index
		@title = 'Administracion del sistema'
	end

	private

	def can_edit_database
		if current_user.role == "Super" || current_user.role == "Administracion"
			return true
		else
			redirect_to root_path
		end
	end
end
