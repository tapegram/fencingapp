class Api::V1::TournamentsController < Api::V1::BaseController
    
    def show
        tournament = Tournament.find(params[:id])
        render json: tournament
    end
end