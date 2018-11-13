class CategoryController < ApplicationController
  def index
    @category_collection = Product.where(category_id: params[:id])
  end

  def show
    @category = Category.find(params[:id])

    @products_by_category = Product.where(category_id: params[:id])
  end

  def onSale
    @products_by_sale = Product.where("price_sale > 0 ")
  end
end
