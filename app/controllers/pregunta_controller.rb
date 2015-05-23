class PreguntaController < ApplicationController
  before_filter :authenticate_user!
  before_filter :can_edit_database
  before_action :set_preguntum, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pregunta = Preguntum.all
    respond_with(@pregunta)
  end

  def show
    respond_with(@preguntum)
  end

  def new
    @respuestas =  RespuestasCerrada.where(estado: "A")
    @preguntum = Preguntum.new
    respond_with(@preguntum)
  end

  def edit
    @respuestas =  RespuestasCerrada.where(estado: "A")
  end

  def create
    @preguntum = Preguntum.new(
      pregunta: params[:preguntum][:pregunta],
      tipo: params[:preguntum][:tipo],
      respuestas_cerrada_id: params[:preguntum][:respuestas_cerrada].to_i,
      estado: params[:preguntum][:estado]
    )
    @preguntum.save
    respond_with(@preguntum)
    # @preguntum = Preguntum.new(preguntum_params)
    # @preguntum.save
    # respond_with(@preguntum)
  end

  def update
    @preguntum.update_attributes(
      pregunta: params[:preguntum][:pregunta],
      tipo: params[:preguntum][:tipo],
      respuestas_cerrada_id: params[:preguntum][:respuestas_cerrada].to_i,
      estado: params[:preguntum][:estado]
    )
    respond_with(@preguntum)
    # @preguntum.update(preguntum_params)
    # respond_with(@preguntum)
  end

  def destroy
    @preguntum.destroy
    respond_with(@preguntum)
  end

  private
    def set_preguntum
      @preguntum = Preguntum.find(params[:id])
    end

    def can_edit_database
      if current_user.role == "Super" || current_user.role == "Administracion"
        return true
      else
        redirect_to root_path
      end
    end

    def preguntum_params
      params.require(:preguntum).permit(:pregunta, :tipo, :respuestas_cerrada_id, :estado)
    end
end
