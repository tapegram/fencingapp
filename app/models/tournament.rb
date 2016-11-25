class Tournament < ActiveRecord::Base
    has_many :pools
    has_many :bouts, through: :pools
    has_many :fencer_assignments
end
