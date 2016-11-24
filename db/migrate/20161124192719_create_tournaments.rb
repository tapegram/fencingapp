class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.string :event
      t.string :gender
      t.integer :minAge
      t.integer :maxAge
      t.string :minRating
      t.string :maxRating
      t.datetime :registration_close

      t.timestamps null: false
    end
  end
end
