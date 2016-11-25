class Api::V1::PoolsController < Api::V1::BaseController
    
    def show
        pool = Pool.find(params[:id])
        render json: pool
    end
    
    def index
        pools = Pool.where(:tournament_id => params[:tournament_id])
        render json: pools
    end
end