class AddSpecialityToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :specialty, :string
  	add_column :users, :pro_card, :string
  	add_column :users, :pass_admin, :string
  end
end
