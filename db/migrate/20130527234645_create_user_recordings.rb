class CreateUserRecordings < ActiveRecord::Migration
  def change
    create_table :user_recordings do |t|
      t.references :user
      t.references :recording
      t.date :purchase_date
      t.date :expires_date

      t.timestamps
    end
    add_index :user_recordings, :user_id
    add_index :user_recordings, :recording_id
  end
end
