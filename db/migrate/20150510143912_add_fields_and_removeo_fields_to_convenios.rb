class AddFieldsAndRemoveoFieldsToConvenios < ActiveRecord::Migration
  def change
  	remove_column :convenios, :nombre
  	remove_column :convenios, :descripcion
  	remove_column :convenios, :estato
  	add_column :convenios, :nombre, :string
  	add_column :convenios, :descripcion, :string
  	add_column :convenios, :estado, :string
  end
end
