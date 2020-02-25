class InstaProductsController < ApplicationController
  before_action :set_insta_product, only: [:show, :edit, :update, :destroy]

  # GET /insta_products
  # GET /insta_products.json
  def index
    @insta_products = InstaProduct.all
  end

  # GET /insta_products/1
  # GET /insta_products/1.json
  def show
  end

  # GET /insta_products/new
  def new
    @insta_product = InstaProduct.new
  end

  # GET /insta_products/1/edit
  def edit
  end

  # POST /insta_products
  # POST /insta_products.json
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

  # PATCH/PUT /insta_products/1
  # PATCH/PUT /insta_products/1.json
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

  # DELETE /insta_products/1
  # DELETE /insta_products/1.json
  def destroy
    @insta_product.destroy
    respond_to do |format|
      format.html { redirect_to insta_products_url, notice: 'Insta product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insta_product
      @insta_product = InstaProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def insta_product_params
      params.require(:insta_product).permit(:img, :title, :description, :material, :color, :length, :width, :stones, :cut, :stone_color, :carat_weight, :gram_weight, :user_id)
    end
end
