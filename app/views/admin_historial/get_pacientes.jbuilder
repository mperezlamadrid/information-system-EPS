json.pacientes @pacientes do |paciente|
  json.extract! paciente, :id, :documento, :pri_nombre, :seg_nombre, :pri_apellido, :seg_apellido, :nacimiento, :direccion, :telefono, :regimen, :num_ficha_sisben, :estado
end