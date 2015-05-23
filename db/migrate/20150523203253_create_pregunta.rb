class CreatePregunta < ActiveRecord::Migration
  def change
    create_table :pregunta do |t|
      t.string :pregunta
      t.string :tipo
      t.references :respuestas_cerrada, index: true
      t.string :estado

      t.timestamps
    end
  end
end
