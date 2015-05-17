class HorariosController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_horario, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @horarios = Horario.all
    respond_with(@horarios)
  end

  def show
    respond_with(@horario)
  end

  def new
    @medicos = User.where(role: "Medico")
    @consultorios = Consultorio.where(estado: "A")
    @horarios =  Turno.where(estado: "A")
    @horario = Horario.new
    respond_with(@horario)
  end

  def edit
  end

  def create
    @horario = Horario.new(horario_params)
    @horario.save
    respond_with(@horario)
  end

  def update
    @horario.update(horario_params)
    respond_with(@horario)
  end

  def destroy
    @horario.destroy
    respond_with(@horario)
  end

  private
    def set_horario
      @horario = Horario.find(params[:id])
    end

    def horario_params
      params.require(:horario).permit(:medico, :consultorio, :turno, :estado)
    end
end
