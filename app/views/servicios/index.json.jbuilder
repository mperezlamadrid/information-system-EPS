json.array!(@servicios) do |servicio|
  json.extract! servicio, :id, :nombre, :descripcion, :estado
  json.url servicio_url(servicio, format: :json)
end
