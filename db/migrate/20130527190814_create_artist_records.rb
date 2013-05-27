class CreateArtistRecords < ActiveRecord::Migration
  def change
    create_table :artist_records do |t|
      t.references :artist
      t.references :recording
      t.references :artist_roles

      t.timestamps
    end
    add_index :artist_records, :artist_id
    add_index :artist_records, :artist_roles_id
    add_index :artist_records, :recording_id
    add_index :artist_records, [:artist_id, :recording_id]

  end
end
