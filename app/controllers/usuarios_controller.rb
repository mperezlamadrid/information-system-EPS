class UsuariosController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @usuarios = User.all
    respond_with(@usuarios)
  end

  def show
    respond_with(@usuario)
  end

  def new
    @usuario = User.new
    respond_with(@usuario)
  end

  def edit
  end

  def create
    @usuario = User.new(
      first_name: params[:user][:first_name],
      last_name: params[:user][:last_name],
      username: params[:user][:username],
      role: params[:user][:role],
      email: params[:user][:email],
      password: params[:user][:password],
      password_confirmation: params[:user][:password_confirmation],
      specialty: params[:user][:specialty],
      pro_card: params[:user][:pro_card],
      pass_admin: params[:user][:pass_admin]
    )
    @usuario.save
    respond_with(@usuario)
  end

  def update
    @usuario.update_attributes(
      first_name: params[:user][:first_name],
      last_name: params[:user][:last_name],
      username: params[:user][:username],
      role: params[:user][:role],
      email: params[:user][:email],
      password: params[:user][:password],
      password_confirmation: params[:user][:password_confirmation],
      specialty: params[:user][:specialty],
      pro_card: params[:user][:pro_card],
      pass_admin: params[:user][:pass_admin]
    )
    respond_with(@usuario)
  end

  def destroy
    @usuario.destroy
    respond_with(@usuario)
  end

  private
    def set_usuario
      @usuario = User.find(params[:id])
    end

    # def usuario_params
    #   params.require(:usuario).permit(:first_name, :last_name, :username, :role, :email, :password, :password_confirmation, :specialty, :pro_card, :pass_admin)
    # end
end
