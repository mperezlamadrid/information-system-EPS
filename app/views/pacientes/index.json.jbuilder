json.array!(@pacientes) do |paciente|
  json.extract! paciente, :id, :tipo_documento, :documento, :pri_nombre, :seg_nombre, :pri_apellido, :seg_apellido, :nacimiento, :genero, :direccion, :telefono, :regimen, :num_ficha_sisben, :estado
  json.url paciente_url(paciente, format: :json)
end
