class RecepcionController < ApplicationController
	before_filter :authenticate_user!
	before_filter :check_user_role

	def index
		@title = "Recepcion"
	end

	private

	def check_user_role
    if current_user.role == "Super" || current_user.role == "SIAU"
      return true
    else
      redirect_to root_path
    end
  end
end
