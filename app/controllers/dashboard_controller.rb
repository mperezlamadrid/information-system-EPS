class DashboardController < ApplicationController
	before_filter :authenticate_user!

  def index
  	@title = "Dashboard"
  	if current_user.first_name == ""
  		render :fields_user
  	else
  		render :index
  	end
  end

  def fields_user
  	@title = "User Information"
  end

  def add_fields_user
  	@current_user = User.where(id: current_user.id).first
  	@current_user.update_attributes(
  		first_name: params[:first_name],
  		last_name: params[:last_name],
  		username: params[:username],
  		role: params[:role]
  	)
  	@current_user.save
  	# render json: {}, status: :ok
  end
end
