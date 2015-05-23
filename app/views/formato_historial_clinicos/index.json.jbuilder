json.array!(@formato_historial_clinicos) do |formato_historial_clinico|
  json.extract! formato_historial_clinico, :id, :nombre, :descripcion, :estado
  json.url formato_historial_clinico_url(formato_historial_clinico, format: :json)
end
