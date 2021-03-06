class UsuariosController < ApplicationController
  before_filter :authenticate_user!
  before_filter :can_edit_database
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    if params[:name]
      @usuarios = User.where(first_name: params[:name].capitalize)
      @reload_button = true
    else
      @usuarios = User.all
      @reload_button = false
    end

    respond_with(@usuarios)
  end

  def show
    respond_with(@usuario)
  end

  def new
    @specialities = Speciality.all
    @usuario = User.new
    # respond_with(@usuario)
  end

  def edit
    @specialities = Speciality.all
  end

  def create
    if params[:user][:role] == "1"
      role = "Administracion"
    elsif params[:user][:role] == "2"
      role = "Medico"
    elsif params[:user][:role] == "3"
      role = "Enfermeria"
    elsif params[:user][:role] == "4"
      role = "SIAU"
    end
    speciality = Speciality.find(params[:user][:specialty]).name

    @usuario = User.new(
      first_name: params[:user][:first_name],
      last_name: params[:user][:last_name],
      username: params[:user][:username],
      role: role,
      email: params[:user][:email],
      password: params[:user][:password],
      password_confirmation: params[:user][:password_confirmation],
      specialty: speciality,
      pro_card: params[:user][:pro_card],
      pass_admin: params[:user][:pass_admin]
    )
    @usuario.save
    redirect_to usuarios_path
  end

  def update
    if params[:user][:role] == "1"
      role = "Administracion"
    elsif params[:user][:role] == "2"
      role = "Medico"
    elsif params[:user][:role] == "3"
      role = "Enfermeria"
    elsif params[:user][:role] == "4"
      role = "SIAU"
    end
    speciality = Speciality.find(params[:user][:specialty]).name

    @usuario.update_attributes(
      first_name: params[:user][:first_name],
      last_name: params[:user][:last_name],
      username: params[:user][:username],
      role: role,
      email: params[:user][:email],
      password: params[:user][:password],
      password_confirmation: params[:user][:password_confirmation],
      specialty: speciality,
      pro_card: params[:user][:pro_card],
      pass_admin: params[:user][:pass_admin]
    )
    redirect_to usuario_path(id: @usuario.id)
  end

  def destroy
    @usuario.destroy
    redirect_to usuarios_path
  end

  def search_user
    redirect_to usuarios_path(name: params[:name])
  end

  private
    def set_usuario
      @usuario = User.find(params[:id])
    end

    def can_edit_database
      if current_user.role == "Super" || current_user.role == "Administracion"
        return true
      else
        redirect_to root_path
      end
    end

    # def usuario_params
    #   params.require(:usuario).permit(:first_name, :last_name, :username, :role, :email, :password, :password_confirmation, :specialty, :pro_card, :pass_admin)
    # end
end
