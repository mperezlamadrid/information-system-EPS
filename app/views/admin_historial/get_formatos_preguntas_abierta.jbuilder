json.preguntas_abierta @preguntas_abierta do |pregunta|
  json.extract! pregunta, :id, :pregunta, :respuestas_cerrada_id, :estado
end