# frozen_string_literal: true

class CategoryController < ApplicationController
  def index
    @category_collection = Product.where(category_id: params[:id])
  end

  def show
    @category = Category.find(params[:id])

    # @products_by_category = Product.where(category_id: params[:id])
    @products_by_category = Product.order(:name).page(params[:page]).per(2).where(category_id: params[:id])
  end

  def onSale
    @products_by_sale = Product.where('price_sale > 0')
  end

  def newProducts
    @new_products = Product.where('created_at > ?', DateTime.now - 30)    
  end
end
