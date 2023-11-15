class ReviewsController < ApplicationController
  before_action :grab_restaurant, only: %i[new create destroy]
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_review)
    @review.restaurant = @restaurant # Importanteeeee para linkearlo
    @review.save
    redirect_to restaurant_path(grab_restaurant), status: :see_other
  end

  def destroy
    @review.destroy
    redirect_to restaurant_path, status: :see_other
  end

  private

  def grab_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_review
    params.require(:review).permit(:content, :rating)
  end
end
