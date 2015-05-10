class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :tipo_documento
      t.string :documento
      t.string :pri_nombre
      t.string :seg_nombre
      t.string :pri_apellido
      t.string :seg_apellido
      t.date :nacimiento
      t.string :genero
      t.string :direccion
      t.string :telefono
      t.string :regimen
      t.string :num_ficha_sisben
      t.string :estado

      t.timestamps
    end
  end
end
