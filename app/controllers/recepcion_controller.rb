class RecepcionController < ApplicationController
	before_filter :authenticate_user!

	def index
		@title = "Recepcion"
	end
end
