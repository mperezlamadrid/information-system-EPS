class DashboardController < ApplicationController
	before_filter :authenticate_user!

  def index
    if current_user.present?
    	if current_user.first_name == ""
    		redirect_to fields_user_dashboard_index_path
    	else
    		if current_user.role == "Administracion"
    			redirect_to administracion_index_path
    		elsif current_user.role == "Medico" && current_user.specialty == "MEDICINA GENERAL"
    			redirect_to medico_general_index_path
  			elsif current_user.role == "Medico" && current_user.specialty != "MEDICINA GENERAL"
  				redirect_to medico_especialista_path
        elsif current_user.role == "Enfermeria"
          redirect_to enfermeria_path
        elsif current_user.role == "SIAU"
          redirect_to siau_index_path
    		else
    			redirect_to '/404.html'
    		end
    	end
    else
      redirect_to root_path
    end
  end

  def fields_user
  	@title = "User Information"
    check_user_first_name
  end

  def add_fields_user
  	@current_user = User.where(id: current_user.id).first
  	@current_user.update_attributes(
  		first_name: params[:first_name],
  		last_name: params[:last_name],
  		username: params[:username],
  		role: params[:role],
      pass_admin: params[:pass_admin],
      pro_card: params[:pro_card],
      specialty: params[:speciality]
  	)
  	@current_user.save
  	render json: {}, status: :ok
  end

  private

  def check_user_first_name
    if current_user.present?
      if current_user.first_name == ""
        render :fields_user
      else
        redirect_to root_path
      end
    else
      redirect_to root_path
    end
  end
end
