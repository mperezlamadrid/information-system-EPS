json.array!(@convenios) do |convenio|
  json.extract! convenio, :id, :nombre, :descripcion, :estado
  json.url convenio_url(convenio, format: :json)
end
