class AdminHistorialController < ApplicationController
	before_filter :authenticate_user!
	before_filter :can_edit

	def crear_historial
		@title = "Crear Historial"
	end

	def get_pacientes
		@pacientes = Paciente.all
		render :get_pacientes
	end

	def get_formatos_hc
		@formatos = FormatoHistorialClinico.all
		render :get_formatos_hc
	end

	def get_formatos_preguntas_cerrada
		@preguntas_name = []
		@p_cerradas = []
		@preguntas_cerradas = []

		@preguntas = FormatoHcPreguntum.where(formato_hc: params[:name_format])
		@preguntas.each do |pregunta|
			@pregunta = pregunta.pregunta
			@preguntas_name << @pregunta
		end

		@preguntas_name.each do |name|
			preg = Preguntum.find_by(pregunta: name)
			if preg.present?
				if preg.tipo == "Cerrada"
					@p_cerradas << preg
				end
			end
		end

		@p_cerradas.each do |cerrada|
			opciones = OpcionesRespuestasCerrada.where(respuestas_cerrada_id: cerrada.respuestas_cerrada_id)
			pregunta_obj = {pregunta: cerrada, opciones: opciones}
			@preguntas_cerradas << pregunta_obj
		end

		render :get_formatos_preguntas_cerrada
	end

	def get_formatos_preguntas_abierta
		@preguntas_name = []
		@p_abiertas = []

		@preguntas = FormatoHcPreguntum.where(formato_hc: params[:name_format])
		@preguntas.each do |pregunta|
			@pregunta = pregunta.pregunta
			@preguntas_name << @pregunta
		end

		@preguntas_name.each do |name|
			preg = Preguntum.find_by(pregunta: name)
			if preg.present?
				if preg.tipo == "No Cerrada"
					@p_abiertas << preg
				end
			end
		end

		@preguntas_abierta = @p_abiertas

		render :get_formatos_preguntas_abierta
	end

	private

	def can_edit
		if current_user.role != "Administracion"
			return true
		else
			redirect_to root_path
		end
	end
end
