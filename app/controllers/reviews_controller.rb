class ReviewsController < ApplicationController
  before_action :find_product

  def new
    @review = Review.new
    @review.product_id = @product.id
    @review.user_id = current_user.id
  end

  def create
    if current_user
      @review = Review.new(review_params)
      @review.product_id = params[:product_id]
      @review.user = current_user
      @review.save
      redirect_to product_path(@review.product)
    else
      render "not logged in"
    end
  end


  private

    def review_params
      params.require(:review).permit(:rating, :description)
    end
    
    def find_product
      @product = Product.find(params[:product_id])
    end
end
