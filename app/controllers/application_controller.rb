class ApplicationController < ActionController::Base

    helper_method :categories

    def categories
        @category_collection = Category.all
    end
end
