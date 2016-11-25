class Api::V1::TournamentSerializer < Api::V1::BaseSerializer
    attributes :id, :name, :event, :gender, :minAge, :maxAge, :minRating, :maxRating, :registration_close
    
    has_many :pools
end