class Customers::ProductsController < ApplicationController
  def top
    @product = Product.order("id DESC")
  end

  def about
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end
end
