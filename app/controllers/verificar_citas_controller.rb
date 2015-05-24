class VerificarCitasController < ApplicationController
	before_filter :authenticate_user!
  before_filter :can_edit_database

  def index
		@title = 'Verificar Citas'
	end

	def get_citas
		@paciente = Paciente.where(documento: params[:doc_paciente]).first

		if @paciente.present?
			nombre_paciente = "#{@paciente.pri_nombre} #{@paciente.seg_nombre} #{@paciente.pri_apellido} #{@paciente.seg_apellido}"
		end

		@citas = Citum.where(paciente: nombre_paciente)
		if @citas.present?
			render :get_citas
		else
			render json: {error: "No existe ninguna cita para el paciente o el documento es incorrecto"}
		end
	end

	def bajar_cita
		@cita = Citum.find(params[:id])
		@buscar_registro = RegistroAtencion.where(cita_id: params[:id])
		if @buscar_registro.count == 0
			@registro = RegistroAtencion.new(
				fecha_inicio: Time.now(),
				cita_id: @cita.id,
				estado: "En Proceso"
			)
			@registro.save
			render :bajar_cita
		else
			render json: { error: "La cita ya se ha dado de baja" }
		end
	end

	def registros_atencion
		@title = "Registros"
	end

	def get_registros
		@registros = RegistroAtencion.all
		if @registros.present?
			render :get_registros
		else
			render json: {error: "No existe ningun registro actualmente"}
		end
	end

	def eliminar_registro
		RegistroAtencion.find(params[:id].to_i).destroy
		render json: {status: :ok}
	end

  private
  	def can_edit_database
      if current_user.role == "Super" || current_user.role == "SIAU"
        return true
      else
        redirect_to root_path
      end
    end
end
