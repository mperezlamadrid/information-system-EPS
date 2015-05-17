class TurnosController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_turno, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @turnos = Turno.all
    respond_with(@turnos)
  end

  def show
    respond_with(@turno)
  end

  def new
    @dias_habiles = DiaHabil.where(estado: "A")
    @horas_habiles = HoraHabil.where(estado: "A")
    @minutos_habiles = MinutosHabile.where(estado: "A")

    @turno = Turno.new
    respond_with(@turno)
  end

  def edit
    @dias_habiles = DiaHabil.where(estado: "A")
    @horas_habiles = HoraHabil.where(estado: "A")
    @minutos_habiles = MinutosHabile.where(estado: "A")
  end

  def create
    @turno = Turno.new(turno_params)
    @turno.save
    respond_with(@turno)
  end

  def update
    @turno.update(turno_params)
    respond_with(@turno)
  end

  def destroy
    @turno.destroy
    respond_with(@turno)
  end

  private
    def set_turno
      @turno = Turno.find(params[:id])
    end

    def turno_params
      params.require(:turno).permit(:dia, :hora, :minuto, :estado)
    end
end
