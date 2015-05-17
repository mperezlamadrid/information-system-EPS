json.array!(@consultorios) do |consultorio|
  json.extract! consultorio, :id, :nombre, :descripcion, :estado, :sede_id
  json.url consultorio_url(consultorio, format: :json)
end
