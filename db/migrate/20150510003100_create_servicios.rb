class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :nombre
      t.string :descripcion
      t.string :estado

      t.timestamps
    end
  end
end
