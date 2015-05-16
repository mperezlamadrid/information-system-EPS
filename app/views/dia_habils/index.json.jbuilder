json.array!(@dia_habils) do |dia_habil|
  json.extract! dia_habil, :id, :nombre, :estado
  json.url dia_habil_url(dia_habil, format: :json)
end
