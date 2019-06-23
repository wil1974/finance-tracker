class StocksController < ApplicationController
    def search
        if params[:stock].blank?
                flash.now[:danger] = "You have entered an Empty  Search String"
        else
            @stock = Stock.new_from_lookup(params[:stock])
#            if stock search returned an invalid result 
             flash.now[:danger] = "You have entered an incorrect symbol"  unless @stock          
         end
         
#        render partial for ajax
        respond_to do |format|
            format.js { render partial: 'users/result' }
        end
    end
    
end