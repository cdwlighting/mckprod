class CreateUserAlbums < ActiveRecord::Migration
  def change
    create_table :user_albums do |t|
      t.references :user
      t.references :album
      t.date :purchase_date
      t.date :expires_date

      t.timestamps
    end
    add_index :user_albums, :user_id
    add_index :user_albums, :album_id
  end
end
