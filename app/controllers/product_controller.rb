class ProductController < ApplicationController
  # Collection action for all products.
  # GET /product/
  def index
    @product_collection = Product.order(:name)
  end

  # Member action for a specific product by id.
  # GET /product/#
  def show
    @product = Product.find(params[:id])
  end

  def show_by_category
    @product = Product.find(params[:category])
  end

end
