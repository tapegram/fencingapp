class CreateBouts < ActiveRecord::Migration
  def change
    create_table :bouts do |t|
      t.integer :bout_number
      t.integer :score_left
      t.integer :score_right
      t.string :priority
      t.integer :fencer_left_id, :references => "fencer"
      t.integer :fencer_right_id, :references => "fencer"
      
      t.timestamps null: false
    end
  end
end
