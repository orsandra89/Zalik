class ProductsController < ApplicationController
   before_action :find, only: [:show]
  def index
    @products = Product.all
  end

  
  def show
    @product = Product.find(params[:id])
  end
  
  
  private

  def find
    @product = Product.find(params[:id])
  end
  
end
