class InstaProductsController < ApplicationController
  before_action :set_insta_product, only: [:show, :edit, :update, :destroy]

  def index
    @insta_products = InstaProduct.all
  end

  def show
  end

  def new
    @insta_product = InstaProduct.new
  end

  def edit
  end

  def create
    @insta_product = InstaProduct.new(insta_product_params)

    respond_to do |format|
      if @insta_product.save
        format.html { redirect_to @insta_product, notice: 'Insta product was successfully created.' }
        format.json { render :show, status: :created, location: @insta_product }
      else
        format.html { render :new }
        format.json { render json: @insta_product.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @insta_product.update(insta_product_params)
        format.html { redirect_to @insta_product, notice: 'Insta product was successfully updated.' }
        format.json { render :show, status: :ok, location: @insta_product }
      else
        format.html { render :edit }
        format.json { render json: @insta_product.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @insta_product.destroy
    respond_to do |format|
      format.html { redirect_to insta_products_url, notice: 'Insta product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_insta_product
      @insta_product = InstaProduct.find(params[:id])
    end

    def insta_product_params
      params.require(:insta_product).permit(:img, :title, :description, :material, :color, :length, :width, :stones, :cut, :stone_color, :carat_weight, :gram_weight, :user_id)
    end
end
