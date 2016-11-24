class Bout < ActiveRecord::Base
    belongs_to :fencer_left, :class_name => 'Fencer', :foreign_key => 'fencer_left_id'
    belongs_to :fencer_right, :class_name => 'Fencer', :foreign_key => 'fencer_right_id'
    belongs_to :pool
end
