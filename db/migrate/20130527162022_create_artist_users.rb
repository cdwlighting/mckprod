class CreateArtistUsers < ActiveRecord::Migration
  def change
    create_table :artist_users do |t|
      t.references :user
      t.references :artist
      t.references :user_role

      t.timestamps
    end
    add_index :artist_users, :user_id
    add_index :artist_users, :artist_id
    add_index :artist_users, :user_role_id
  end
end
