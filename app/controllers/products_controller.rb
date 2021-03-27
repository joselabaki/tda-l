class ProductsController < ApplicationController

  layout  'master'

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])

  end

  def edit
    @product = Product.find(params[:id])

  end

  def index
    @product = Product.all

  end

  def create
    @product = Product.new(product_params)
    if @product.save
            redirect_to @product
    else
      render 'new'
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      # Handle a successful update.
         redirect_to @product
    else
      render 'edit'
    end
  end


  def destroy
   Product.find(params[:id]).destroy
   redirect_to products_url
 end

 private

   def product_params
     params.require(:product).permit(:name, :story, :island, :info, :image, :remove_image)
   end




end
