class CreateHoraHabils < ActiveRecord::Migration
  def change
    create_table :hora_habils do |t|
      t.integer :hora
      t.string :estado

      t.timestamps
    end
  end
end
