class StocksController < ApplicationController
    def search
        if params[:stock].present?
            @stock = Stock.new_from_lookup(params[:stock])
#            if stock search returned a valid result 
            if @stock  
            #       render json: @stock
#                render "users/my_portfolio"
#using ajax, so we don't reload my_portfolio page, but reload the partial result page
                respond_to do |format|
                    format.js { render partial: 'users/result' }
                end
            else
                flash[:danger] = "You have entered an incorrect symbol"
                redirect_to my_portfolio_path
            end
        else
            flash[:danger] = "You have entered an Empty  Search String"
            redirect_to my_portfolio_path
        end
    end
end