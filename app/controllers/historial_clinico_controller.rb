class HistorialClinicoController < ApplicationController
	before_filter :authenticate_user!

	def index
		@title = 'Historial Clinico'
	end
end
