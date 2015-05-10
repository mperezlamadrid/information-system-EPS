class AddFieldsAndRemoveoFieldsToConvenios < ActiveRecord::Migration
  def change
  	remove_column :convenios, :nombre
  	remove_column :convenios, :descripcion
  	remove_column :convenios, :estato
  	add_column :convenios, :name, :string
  	add_column :convenios, :description, :string
  	add_column :convenios, :status, :string
  end
end
