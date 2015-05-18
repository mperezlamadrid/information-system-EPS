class ConveniosController < ApplicationController
  before_filter :authenticate_user!
  before_filter :can_edit_database
  before_action :set_convenio, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @convenios = Convenio.all
    respond_with(@convenios)
  end

  def show
    respond_with(@convenio)
  end

  def new
    @convenio = Convenio.new
    respond_with(@convenio)
  end

  def edit
  end

  def create
    @convenio = Convenio.new(convenio_params)
    @convenio.save
    respond_with(@convenio)
  end

  def update
    @convenio.update(convenio_params)
    respond_with(@convenio)
  end

  def destroy
    @convenio.destroy
    respond_with(@convenio)
  end

  private
    def set_convenio
      @convenio = Convenio.find(params[:id])
    end

    def convenio_params
      params.require(:convenio).permit(:nombre, :descripcion, :estado)
    end

    def can_edit_database
      if current_user.role == "Super" || current_user.role == "Administracion"
        return true
      else
        redirect_to root_path
      end
    end
end
