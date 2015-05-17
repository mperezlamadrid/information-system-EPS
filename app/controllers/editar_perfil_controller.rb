class EditarPerfilController < ApplicationController
	before_filter :authenticate_user!

  def index

  end

  def show_user_data
    @usuario = User.find(current_user.id)
    render json: { user: @usuario }
  end

  def editar_perfil
  	user = User.find(current_user.id)
    check_username = User.where(username: params[:username])
    if check_username.present?
	    if check_username.count <= 1 && check_username.first.id == user.id
	      @usuario = User.find(current_user.id)
	      @usuario.update_attributes(
	        first_name: params[:first_name],
	        last_name: params[:last_name],
	        username: params[:username],
	        role: params[:role],
	        email: params[:email],
	        password: params[:password],
	        password_confirmation: params[:password_confirmation],
	        specialty: params[:speciality],
	        pro_card: params[:pro_card],
	        pass_admin: params[:pass_admin]
	      )
	      render json: { estado: :ok }
	    else
	      render json: { estado: "El nombre de usuario ya existe" }
	    end
	  else
	  	@usuario = User.find(current_user.id)
      @usuario.update_attributes(
        first_name: params[:first_name],
        last_name: params[:last_name],
        username: params[:username],
        role: params[:role],
        email: params[:email],
        password: params[:password],
        password_confirmation: params[:password_confirmation],
        specialty: params[:speciality],
        pro_card: params[:pro_card],
        pass_admin: params[:pass_admin]
      )
      render json: { estado: :ok }
	  end
  end
end
