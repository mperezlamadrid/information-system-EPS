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
end
