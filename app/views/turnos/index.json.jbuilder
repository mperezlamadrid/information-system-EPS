json.array!(@turnos) do |turno|
  json.extract! turno, :id, :dia, :hora, :minuto, :estado
  json.url turno_url(turno, format: :json)
end
