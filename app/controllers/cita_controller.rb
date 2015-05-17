class CitaController < ApplicationController
  before_action :set_citum, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @cita = Citum.all
    respond_with(@cita)
  end

  def show
    respond_with(@citum)
  end

  def new
    @pacientes = Paciente.all
    @especialidades = Speciality.all
    @horarios = Horario.all
    @citum = Citum.new
    respond_with(@citum)
  end

  def edit
    @pacientes = Paciente.all
    @especialidades = Speciality.all
    @horarios = Horario.all
  end

  def create
    @citum = Citum.new(citum_params)
    @citum.save
    respond_with(@citum)
  end

  def update
    @citum.update(citum_params)
    respond_with(@citum)
  end

  def destroy
    @citum.destroy
    respond_with(@citum)
  end

  private
    def set_citum
      @citum = Citum.find(params[:id])
    end

    def citum_params
      params.require(:citum).permit(:fecha, :horario, :paciente, :especialidad, :tipo, :estado)
    end
end
