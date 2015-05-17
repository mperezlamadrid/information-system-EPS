json.array!(@sedes) do |sede|
  json.extract! sede, :id, :nombre, :descripcion, :estado
  json.url sede_url(sede, format: :json)
end
