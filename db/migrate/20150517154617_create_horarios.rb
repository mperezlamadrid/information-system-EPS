class CreateHorarios < ActiveRecord::Migration
  def change
    create_table :horarios do |t|
      t.string :medico
      t.string :consultorio
      t.string :turno
      t.string :estado

      t.timestamps
    end
  end
end
