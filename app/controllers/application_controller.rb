# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :categories, :contacts

  def categories
    @category_collection = Category.all
  end

  def contacts
    @allContacts = Page.all
  end
end
