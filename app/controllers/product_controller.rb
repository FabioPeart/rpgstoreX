# frozen_string_literal: true

class ProductController < ApplicationController
  # Collection action for all products.
  # GET /product/
  def index
    @product_collection = Product.order(:name).page(params[:page]).per(2)
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
