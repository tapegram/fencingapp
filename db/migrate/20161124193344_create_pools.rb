class CreatePools < ActiveRecord::Migration
  def change
    create_table :pools do |t|
      t.boolean :finished
      t.references :tournament, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
