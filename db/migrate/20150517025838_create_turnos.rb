class CreateTurnos < ActiveRecord::Migration
  def change
    create_table :turnos do |t|
      t.string :dia
      t.string :hora
      t.string :minuto
      t.string :estado

      t.timestamps
    end
  end
end
