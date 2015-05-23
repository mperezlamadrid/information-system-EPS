class OpcionesRespuestasCerradasController < ApplicationController
  before_filter :authenticate_user!
  before_filter :can_edit_database
  before_action :set_opciones_respuestas_cerrada, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @opciones_respuestas_cerradas = OpcionesRespuestasCerrada.all
    respond_with(@opciones_respuestas_cerradas)
  end

  def show
    respond_with(@opciones_respuestas_cerrada)
  end

  def new
    @respuestas =  RespuestasCerrada.where(estado: "A")
    @opciones_respuestas_cerrada = OpcionesRespuestasCerrada.new
    respond_with(@opciones_respuestas_cerrada)
  end

  def edit
    @respuestas =  RespuestasCerrada.where(estado: "A")
  end

  def create
    @opciones_respuestas_cerrada = OpcionesRespuestasCerrada.new(
      respuestas_cerrada_id: params[:opciones_respuestas_cerrada][:respuestas_cerrada].to_i,
      opcion: params[:opciones_respuestas_cerrada][:opcion],
      estado: params[:opciones_respuestas_cerrada][:estado]
    )
    @opciones_respuestas_cerrada.save
    respond_with(@opciones_respuestas_cerrada)
  end

  def update
    @opciones_respuestas_cerrada.update_attributes(
      respuestas_cerrada_id: params[:opciones_respuestas_cerrada][:respuestas_cerrada].to_i,
      opcion: params[:opciones_respuestas_cerrada][:opcion],
      estado: params[:opciones_respuestas_cerrada][:estado]
    )
    respond_with(@opciones_respuestas_cerrada)
    # @opciones_respuestas_cerrada.update(opciones_respuestas_cerrada_params)
    # respond_with(@opciones_respuestas_cerrada)
  end

  def destroy
    @opciones_respuestas_cerrada.destroy
    respond_with(@opciones_respuestas_cerrada)
  end

  private
    def set_opciones_respuestas_cerrada
      @opciones_respuestas_cerrada = OpcionesRespuestasCerrada.find(params[:id])
    end

    def can_edit_database
      if current_user.role == "Super" || current_user.role == "Administracion"
        return true
      else
        redirect_to root_path
      end
    end

    # def opciones_respuestas_cerrada_params
    #   params.require(:opciones_respuestas_cerrada).permit(:respuestas_cerrada_id, :opcion, :estado)
    # end
end
