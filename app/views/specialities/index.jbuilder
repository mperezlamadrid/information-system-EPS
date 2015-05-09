json.specialities @specialities do |speciality|
  json.extract! speciality, :id, :name, :descripcion, :status
end