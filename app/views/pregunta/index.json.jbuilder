json.array!(@pregunta) do |preguntum|
  json.extract! preguntum, :id, :pregunta, :tipo, :respuestas_cerrada_id, :estado
  json.url preguntum_url(preguntum, format: :json)
end
