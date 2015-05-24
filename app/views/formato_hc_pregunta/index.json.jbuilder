json.array!(@formato_hc_pregunta) do |formato_hc_preguntum|
  json.extract! formato_hc_preguntum, :id, :formato_hc, :pregunta, :obligatorio, :estado
  json.url formato_hc_preguntum_url(formato_hc_preguntum, format: :json)
end
