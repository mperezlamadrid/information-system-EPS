class CreateDiaHabils < ActiveRecord::Migration
  def change
    create_table :dia_habils do |t|
      t.string :nombre
      t.string :estado

      t.timestamps
    end
  end
end
