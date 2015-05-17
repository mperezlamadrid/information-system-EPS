class CreateDocumentoIdentidads < ActiveRecord::Migration
  def change
    create_table :documento_identidads do |t|
      t.string :nombre
      t.string :siglas

      t.timestamps
    end
  end
end
