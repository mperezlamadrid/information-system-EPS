json.citas @citas do |cita|
  json.extract! cita, :id, :fecha, :horario, :paciente, :especialidad, :tipo, :estado
end