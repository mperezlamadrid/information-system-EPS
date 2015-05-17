json.array!(@horarios) do |horario|
  json.extract! horario, :id, :medico, :consultorio, :turno, :estado
  json.url horario_url(horario, format: :json)
end
