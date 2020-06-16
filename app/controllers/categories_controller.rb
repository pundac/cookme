class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def url

  end
end
