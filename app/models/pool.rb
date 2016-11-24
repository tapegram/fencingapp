class Pool < ActiveRecord::Base
  belongs_to :tournament
  has_many :bouts
end
