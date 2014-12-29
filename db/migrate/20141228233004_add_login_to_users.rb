class AddLoginToUsers < ActiveRecord::Migration
  def change
    add_column :users, :login, :string
    add_index :users, :login, unique: true
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
