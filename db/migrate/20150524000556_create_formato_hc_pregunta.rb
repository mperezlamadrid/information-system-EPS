class CreateFormatoHcPregunta < ActiveRecord::Migration
  def change
    create_table :formato_hc_pregunta do |t|
      t.string :formato_hc
      t.string :pregunta
      t.string :obligatorio
      t.string :estado

      t.timestamps
    end
  end
end
