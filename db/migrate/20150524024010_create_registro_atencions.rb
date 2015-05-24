class CreateRegistroAtencions < ActiveRecord::Migration
  def change
    create_table :registro_atencions do |t|
      t.date :fecha_inicio
      t.date :fecha_final
      t.integer :cita_id
      t.string :estado

      t.timestamps
    end
  end
end
