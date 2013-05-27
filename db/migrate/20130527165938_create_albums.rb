class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.references :artist
      t.string :name
      t.date :release_date
      t.integer :ranking

      t.timestamps
    end
    add_index :albums, :artist_id
  end
end
