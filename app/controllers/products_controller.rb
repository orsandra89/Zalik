class ProductsController < ApplicationController
  
  def index
    @products = Product.all
  end

  def new
    @Product = Product.new
  end
  
  def create
    @product = current_user.products.build(eugene)
    if @product.save
    redirect_to root_path #because we're admins
    end
  end
  
  def show
    @product = Product.find(params[:id])
  end
  
  def edit
  
  end
  
  def update
    if @product.update(params)
      redirect_to root_path
    end
  end
  
  def destroy
    @product.destroy
    redirect_to root_path
  end
  
  private

  def eugene
    params.require(:product).permit(:name, :description, :price)
  end

  def find
    @product = Product.find(params[:id])
  end
  
end
