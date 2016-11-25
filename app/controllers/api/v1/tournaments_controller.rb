class Api::V1::TournamentsController < Api::V1::BaseController
    
    def show
        tournament = Tournament.find(params[:id])
        render json: tournament
    end
    
    def index
        tournaments = Tournament.all
        render json: tournaments
    end
end