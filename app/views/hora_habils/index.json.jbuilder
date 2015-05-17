json.array!(@hora_habils) do |hora_habil|
  json.extract! hora_habil, :id, :hora, :estado
  json.url hora_habil_url(hora_habil, format: :json)
end
