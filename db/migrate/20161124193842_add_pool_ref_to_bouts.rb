class AddPoolRefToBouts < ActiveRecord::Migration
  def change
    add_reference :bouts, :pool, index: true, foreign_key: true
  end
end
