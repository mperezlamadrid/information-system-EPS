json.array!(@minutos_habiles) do |minutos_habile|
  json.extract! minutos_habile, :id, :minuto, :estado
  json.url minutos_habile_url(minutos_habile, format: :json)
end
