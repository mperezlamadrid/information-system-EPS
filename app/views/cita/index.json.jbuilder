json.array!(@cita) do |citum|
  json.extract! citum, :id, :fecha, :horario, :paciente, :especialidad, :tipo, :estado
  json.url citum_url(citum, format: :json)
end
