class CreateRespuestasCerradas < ActiveRecord::Migration
  def change
    create_table :respuestas_cerradas do |t|
      t.string :respuesta
      t.string :estado

      t.timestamps
    end
  end
end
