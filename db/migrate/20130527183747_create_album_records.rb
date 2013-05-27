class CreateAlbumRecords < ActiveRecord::Migration
  def change
    create_table :album_records do |t|
      t.references :album
      t.references :recording
      t.integer :order

      t.timestamps
    end
    add_index :album_records, :album_id
    add_index :album_records, :recording_id
    add_index :album_records, :order
    add_index :album_records, [:album_id, :recording_id], unique: true
    add_index :album_records, [:album_id, :recording_id, :order]
  end
end
