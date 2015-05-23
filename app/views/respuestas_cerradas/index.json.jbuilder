json.array!(@respuestas_cerradas) do |respuestas_cerrada|
  json.extract! respuestas_cerrada, :id, :respuesta, :estado
  json.url respuestas_cerrada_url(respuestas_cerrada, format: :json)
end
