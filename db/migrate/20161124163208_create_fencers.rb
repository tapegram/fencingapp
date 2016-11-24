class CreateFencers < ActiveRecord::Migration
  def change
    create_table :fencers do |t|
      t.string :epee_rating
      t.integer :epee_rating_year
      t.string :foil_rating
      t.integer :foil_rating_year
      t.string :sabre_rating
      t.integer :sabre_rating_year

      t.timestamps null: false
    end
  end
end