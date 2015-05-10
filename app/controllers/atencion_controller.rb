class AtencionController < ApplicationController
	before_filter :authenticate_user!

	def index
		@title = 'Atencion al cliente'
	end
end
