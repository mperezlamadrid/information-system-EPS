class CreateCita < ActiveRecord::Migration
  def change
    create_table :cita do |t|
      t.date :fecha
      t.string :horario
      t.string :paciente
      t.string :especialidad
      t.string :tipo
      t.string :estado

      t.timestamps
    end
  end
end
