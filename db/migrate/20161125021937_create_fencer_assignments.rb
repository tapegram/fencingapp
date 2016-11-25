class CreateFencerAssignments < ActiveRecord::Migration
  def change
    create_table :fencer_assignments do |t|
      t.references :tournament, index: true, foreign_key: true
      t.references :pool, index: true, foreign_key: true
      t.integer :initial_seed
      t.integer :seed_after_pools
      t.integer :final_place

      t.timestamps null: false
    end
  end
end
