class FormatoHistorialClinicosController < ApplicationController
  before_action :set_formato_historial_clinico, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @formato_historial_clinicos = FormatoHistorialClinico.all
    respond_with(@formato_historial_clinicos)
  end

  def show
    respond_with(@formato_historial_clinico)
  end

  def new
    @formato_historial_clinico = FormatoHistorialClinico.new
    respond_with(@formato_historial_clinico)
  end

  def edit
  end

  def create
    @formato_historial_clinico = FormatoHistorialClinico.new(formato_historial_clinico_params)
    @formato_historial_clinico.save
    respond_with(@formato_historial_clinico)
  end

  def update
    @formato_historial_clinico.update(formato_historial_clinico_params)
    respond_with(@formato_historial_clinico)
  end

  def destroy
    @formato_historial_clinico.destroy
    respond_with(@formato_historial_clinico)
  end

  private
    def set_formato_historial_clinico
      @formato_historial_clinico = FormatoHistorialClinico.find(params[:id])
    end

    def formato_historial_clinico_params
      params.require(:formato_historial_clinico).permit(:nombre, :descripcion, :estado)
    end
end
