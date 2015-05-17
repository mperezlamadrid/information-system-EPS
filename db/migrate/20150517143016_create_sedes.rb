class CreateSedes < ActiveRecord::Migration
  def change
    create_table :sedes do |t|
      t.string :nombre
      t.string :descripcion
      t.string :estado

      t.timestamps
    end
  end
end
