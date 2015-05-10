class CreateConvenios < ActiveRecord::Migration
  def change
    create_table :convenios do |t|
      t.string :nombre
      t.string :descripcion
      t.string :estato

      t.timestamps
    end
  end
end
