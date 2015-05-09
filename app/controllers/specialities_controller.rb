class SpecialitiesController < ApplicationController
	def index
		@specialities = Speciality.all
		render :index
	end
end
