class CreateConsultorios < ActiveRecord::Migration
  def change
    create_table :consultorios do |t|
      t.string :nombre
      t.string :descripcion
      t.string :estado
      t.references :sede, index: true

      t.timestamps
    end
  end
end
