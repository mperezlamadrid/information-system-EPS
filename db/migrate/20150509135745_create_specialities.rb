class CreateSpecialities < ActiveRecord::Migration
  def change
    create_table :specialities do |t|
      t.string :name
      t.string :descripcion
      t.string :status

      t.timestamps
    end
  end
end
