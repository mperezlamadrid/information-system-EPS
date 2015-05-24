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
		render :bajar_cita
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
