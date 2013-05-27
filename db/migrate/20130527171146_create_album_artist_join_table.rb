class CreateAlbumArtistJoinTable < ActiveRecord::Migration
  def up
    create_table :albums_artists, :id => false do |t|
      t.integer :artist_id
      t.integer :album_id
    end
    add_index :albums_artists, [:artist_id, :album_id], :unique => true
  end

  def down
    drop_table :albums_artists
  end
end
