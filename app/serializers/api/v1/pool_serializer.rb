class Api::V1::PoolSerializer < Api::V1::BaseSerializer
    attributes :id, :finished
    
    has_many :bouts
end