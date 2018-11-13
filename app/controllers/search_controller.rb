class SearchController < ApplicationController
    def index
        @products = Products.all
    end

    def results
        # how to add the query for 'name or description' ?
        @products = Product.where('name LIKE ?', "%#{params[:q]}%")
    end


end
