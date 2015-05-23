json.array!(@opciones_respuestas_cerradas) do |opciones_respuestas_cerrada|
  json.extract! opciones_respuestas_cerrada, :id, :respuestas_cerrada_id, :opcion, :estado
  json.url opciones_respuestas_cerrada_url(opciones_respuestas_cerrada, format: :json)
end
