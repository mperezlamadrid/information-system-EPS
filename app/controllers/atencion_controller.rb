class AtencionController < ApplicationController
	before_filter :authenticate_user!
	before_filter :can_edit

	def index
		@title = 'Atencion al cliente'
	end

	private

	def can_edit
		if current_user.role == "Medico" || current_user.role == "Enfermeria"
			return true
		else
			redirect_to root_path
		end
	end
end
