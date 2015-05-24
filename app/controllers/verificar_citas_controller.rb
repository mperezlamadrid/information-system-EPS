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

	def get_registros_atencion
		if 	current_user.role == "Super" || current_user.role == "SIAU"
			get_registros
		else
			@registros_cita_id = RegistroAtencion.uniq.pluck(:cita_id)
			@citas = []
			@registros_cita_id.each do |cita_id|
				@cita = Citum.find(cita_id)
				@citas << @cita if @cita.present?
			end
			@cita_valida = []
			@citas.each do |cita|
				nombre_medico = "#{cita.horario.split(" ")[7]} #{cita.horario.split(" ")[8]}"
				medico_actual = "#{current_user.first_name} #{current_user.last_name}"

				if nombre_medico == medico_actual
					@cita_valida << cita.id
				end
			end
			@registros = []
			@cita_valida.each do |cita_id_valido|
				@registros << RegistroAtencion.where(cita_id: cita_id_valido).first
			end
			if @registros.present?
				render :get_registros_atencion
			else
				render json: {error: "No existe ningun registro actualmente"}
			end
		end
	end

	def atender_cita
		@registro = RegistroAtencion.find(params[:id])

		if @registro.present?
			@registro.update_attributes(
				fecha_final: Time.now(),
				estado: "Realizada"
			)
			@registro.save
			render :atender_cita
		else
			render json: { error: "La cita ya se ha finalizado" }
		end
	end

	def eliminar_registro
		RegistroAtencion.find(params[:id].to_i).destroy
		render json: {status: :ok}
	end

  private
  	def can_edit_database
      if current_user.role == "Super" || current_user.role == "SIAU" || current_user.role == "Medico" || current_user.role == "Enfermeria"
        return true
      else
        redirect_to root_path
      end
    end
end
