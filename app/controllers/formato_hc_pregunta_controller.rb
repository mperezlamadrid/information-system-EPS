class FormatoHcPreguntaController < ApplicationController
  before_filter :authenticate_user!
  before_filter :can_edit_database
  before_action :set_formato_hc_preguntum, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @formato_hc_pregunta = FormatoHcPreguntum.all
    respond_with(@formato_hc_pregunta)
  end

  def show
    respond_with(@formato_hc_preguntum)
  end

  def new
    @preguntas = Preguntum.where(estado: "A")
    @formatos = FormatoHistorialClinico.where(estado: "A")

    @formato_hc_preguntum = FormatoHcPreguntum.new
    respond_with(@formato_hc_preguntum)
  end

  def edit
    @preguntas = Preguntum.where(estado: "A")
    @formatos = FormatoHistorialClinico.where(estado: "A")
  end

  def create
    @formato_hc_preguntum = FormatoHcPreguntum.new(formato_hc_preguntum_params)
    @formato_hc_preguntum.save
    respond_with(@formato_hc_preguntum)
  end

  def update
    @formato_hc_preguntum.update(formato_hc_preguntum_params)
    respond_with(@formato_hc_preguntum)
  end

  def destroy
    @formato_hc_preguntum.destroy
    respond_with(@formato_hc_preguntum)
  end

  private
    def set_formato_hc_preguntum
      @formato_hc_preguntum = FormatoHcPreguntum.find(params[:id])
    end

    def formato_hc_preguntum_params
      params.require(:formato_hc_preguntum).permit(:formato_hc, :pregunta, :obligatorio, :estado)
    end

    def can_edit_database
      if current_user.role == "Super" || current_user.role == "Administracion"
        return true
      else
        redirect_to root_path
      end
    end
end
