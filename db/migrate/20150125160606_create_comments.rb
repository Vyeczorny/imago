class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.references :user, index: true
      t.references :photo, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :users
    add_foreign_key :comments, :photos
  end
end
