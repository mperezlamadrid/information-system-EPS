class PacientesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :can_edit_database
  before_action :set_paciente, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pacientes = Paciente.all
    respond_with(@pacientes)
  end

  def show
    respond_with(@paciente)
  end

  def new
    @identidades = DocumentoIdentidad.all
    @paciente = Paciente.new
    respond_with(@paciente)
  end

  def edit
    @identidades = DocumentoIdentidad.all
  end

  def create
    @paciente = Paciente.new(paciente_params)
    @paciente.save
    respond_with(@paciente)
  end

  def update
    @paciente.update(paciente_params)
    respond_with(@paciente)
  end

  def destroy
    @paciente.destroy
    respond_with(@paciente)
  end

  private
    def set_paciente
      @paciente = Paciente.find(params[:id])
    end

    def paciente_params
      params.require(:paciente).permit(:tipo_documento, :documento, :pri_nombre, :seg_nombre, :pri_apellido, :seg_apellido, :nacimiento, :genero, :direccion, :telefono, :regimen, :num_ficha_sisben, :estado)
    end

    def can_edit_database
      if current_user.role == "Super" || current_user.role == "Administracion"
        return true
      else
        redirect_to root_path
      end
    end
end
