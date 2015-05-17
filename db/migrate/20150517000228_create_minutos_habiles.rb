class CreateMinutosHabiles < ActiveRecord::Migration
  def change
    create_table :minutos_habiles do |t|
      t.integer :minuto
      t.string :estado

      t.timestamps
    end
  end
end
