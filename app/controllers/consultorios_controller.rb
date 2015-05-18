class ConsultoriosController < ApplicationController
  before_filter :authenticate_user!
  before_filter :can_edit_database
  before_action :set_consultorio, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @consultorios = Consultorio.all
    respond_with(@consultorios)
  end

  def show
    respond_with(@consultorio)
  end

  def new
    @sedes = Sede.where(estado: "A")
    @consultorio = Consultorio.new
    respond_with(@consultorio)
  end

  def edit
    @sedes = Sede.where(estado: "A")
  end

  def create
    @sede = Sede.where(nombre: params[:consultorio][:sede]).first
    @consultorio = Consultorio.new(
      nombre: params[:consultorio][:nombre],
      descripcion: params[:consultorio][:descripcion],
      sede_id: @sede.id,
      estado: params[:consultorio][:estado]
    )
    @consultorio.save
    respond_with(@consultorio)
  end

  def update
    @sede = Sede.where(nombre: params[:consultorio][:sede]).first
    @consultorio.update_attributes(
      nombre: params[:consultorio][:nombre],
      descripcion: params[:consultorio][:descripcion],
      sede_id: @sede.id,
      estado: params[:consultorio][:estado]
    )
    respond_with(@consultorio)
  end

  def destroy
    @consultorio.destroy
    respond_with(@consultorio)
  end

  private
    def set_consultorio
      @consultorio = Consultorio.find(params[:id])
    end

    def consultorio_params
      params.require(:consultorio).permit(:nombre, :descripcion, :estado, :sede_id)
    end

    def can_edit_database
      if current_user.role == "Super" || current_user.role == "Administracion"
        return true
      else
        redirect_to root_path
      end
    end
end
