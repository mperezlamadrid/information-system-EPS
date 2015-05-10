class AdminSystemController < ApplicationController
	before_filter :authenticate_user!

	def index
		@title = 'Administracion del sistema'
	end
end
