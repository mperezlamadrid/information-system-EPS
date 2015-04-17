class MedicoGeneralController < ApplicationController
	def index
		@title = 'Medicina General'
		if current_user.first_name == ""
      redirect_to fields_user_dashboard_index_path
    else
      render :index
    end
	end
end
