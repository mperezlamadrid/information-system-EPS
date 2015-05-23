class RespuestasCerradasController < ApplicationController
  before_filter :authenticate_user!
  before_filter :can_edit_database
  before_action :set_respuestas_cerrada, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @respuestas_cerradas = RespuestasCerrada.all
    respond_with(@respuestas_cerradas)
  end

  def show
    respond_with(@respuestas_cerrada)
  end

  def new
    @respuestas_cerrada = RespuestasCerrada.new
    respond_with(@respuestas_cerrada)
  end

  def edit
  end

  def create
    @respuestas_cerrada = RespuestasCerrada.new(respuestas_cerrada_params)
    @respuestas_cerrada.save
    respond_with(@respuestas_cerrada)
  end

  def update
    @respuestas_cerrada.update(respuestas_cerrada_params)
    respond_with(@respuestas_cerrada)
  end

  def destroy
    @respuestas_cerrada.destroy
    respond_with(@respuestas_cerrada)
  end

  private
    def set_respuestas_cerrada
      @respuestas_cerrada = RespuestasCerrada.find(params[:id])
    end

    def respuestas_cerrada_params
      params.require(:respuestas_cerrada).permit(:respuesta, :estado)
    end

    def can_edit_database
      if current_user.role == "Super" || current_user.role == "Administracion"
        return true
      else
        redirect_to root_path
      end
    end
end
