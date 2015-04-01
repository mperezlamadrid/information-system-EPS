class HomeController < ApplicationController

	def index
		@title = 'EPS MAJJ'
	end

	def about_us
		@title = 'Acerca de nosotros'
	end

	def solutions
		@title = 'Soluciones'
	end
end
