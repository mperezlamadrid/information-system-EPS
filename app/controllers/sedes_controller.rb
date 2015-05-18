class SedesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :can_edit_database
  before_action :set_sede, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @sedes = Sede.all
    respond_with(@sedes)
  end

  def show
    respond_with(@sede)
  end

  def new
    @sede = Sede.new
    respond_with(@sede)
  end

  def edit
  end

  def create
    @sede = Sede.new(sede_params)
    @sede.save
    respond_with(@sede)
  end

  def update
    @sede.update(sede_params)
    respond_with(@sede)
  end

  def destroy
    @sede.destroy
    respond_with(@sede)
  end

  private
    def set_sede
      @sede = Sede.find(params[:id])
    end

    def sede_params
      params.require(:sede).permit(:nombre, :descripcion, :estado)
    end

    def can_edit_database
      if current_user.role == "Super" || current_user.role == "Administracion"
        return true
      else
        redirect_to root_path
      end
    end
end
