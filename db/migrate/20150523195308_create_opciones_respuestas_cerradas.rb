class CreateOpcionesRespuestasCerradas < ActiveRecord::Migration
  def change
    create_table :opciones_respuestas_cerradas do |t|
      t.references :respuestas_cerrada, index: true
      t.string :opcion
      t.string :estado

      t.timestamps
    end
  end
end
