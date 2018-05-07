class ProductsController < ApplicationController
  # before_filter :authorize, except: [:index, :show, :edit, :update, :destroy, :new]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
    respond_to do |format|
      format.html { render :index }
      format.js
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to '/'
      flash[:notice] = "Product successfully added."
    else
      render :new
      flash[:notice] = "Something went wrong, try again"
    end
  end

  def edit
    @product = Product.find(params[:id])
    render :edit
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
      flash[:notice] = "Product successfully updated."
    else
      render :edit
      flash[:notice] = "Something went wrong, try again"
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
    flash[:notice] = "Product successfully removed"
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :image)
  end
end
