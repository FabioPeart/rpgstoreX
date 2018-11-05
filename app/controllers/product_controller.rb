class ProductController < ApplicationController
  # Collection action for all products.
  # GET /product/
  def index
    @products = Product.order(:name)
  end

  # Member action for a specific product by id.
  # GET /product/#
  def show
    @product = Product.find(params[:id])
  end
end