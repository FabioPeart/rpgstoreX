class CategoryController < ApplicationController
  def index
    # @category_collection = Category.order(:name)
    @category_collection = Product.where(category_id: params[:id])

    # @product_collection = Product.where(category_id: params[:id])
  end

  def show
    @category = Category.find(params[:id])

    @products_by_category = Product.where(category_id: params[:id])
  end
end
