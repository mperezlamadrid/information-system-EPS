class HistorialClinicoController < ApplicationController
	before_filter :authenticate_user!
	before_filter :can_edit

	def index
		@title = 'Historial Clinico'
	end

	private

	def can_edit
		if current_user.role == "Medico" || current_user.role == "SIAU" || current_user.role == "Super"
			return true
		else
			redirect_to root_path
		end
	end
end
