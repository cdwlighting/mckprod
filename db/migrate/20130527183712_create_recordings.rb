class CreateRecordings < ActiveRecord::Migration
  def change
    create_table :recordings do |t|
      t.string :name
      t.date :release_date
      t.integer :ranking

      t.timestamps
    end
  end
end
