json.array!(@specialities) do |speciality|
  json.extract! speciality, :id, :name, :descripcion, :status
  json.url speciality_url(speciality, format: :json)
end
