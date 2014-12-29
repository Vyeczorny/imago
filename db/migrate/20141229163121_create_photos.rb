class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :user
      t.integer :views, :default => 0
      t.attachment :photo
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
