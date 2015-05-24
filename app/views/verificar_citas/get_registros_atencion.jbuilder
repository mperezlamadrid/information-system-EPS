json.registros @registros do |registro|
  json.extract! registro, :id, :fecha_inicio, :fecha_final, :cita_id, :estado
end