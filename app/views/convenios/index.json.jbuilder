json.array!(@convenios) do |convenio|
  json.extract! convenio, :id, :nombre, :descripcion, :estato
  json.url convenio_url(convenio, format: :json)
end
