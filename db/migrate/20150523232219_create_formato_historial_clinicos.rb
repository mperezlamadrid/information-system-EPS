class CreateFormatoHistorialClinicos < ActiveRecord::Migration
  def change
    create_table :formato_historial_clinicos do |t|
      t.string :nombre
      t.string :descripcion
      t.string :estado

      t.timestamps
    end
  end
end
