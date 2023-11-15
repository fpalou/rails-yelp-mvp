class RestaurantsController < ApplicationController
  before_action :grab_restaurant, only: %i[show edit update destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show; end

  def create
    @restaurant = Restaurant.new(review_restaurant)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit; end

  def update
    @restaurant.update(review_restaurant)
    redirect_to restaurant_path, status: :see_other
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurant_path, status: :see_other
  end

  private

  def grab_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def review_restaurant
    params.require(:restaurant).permit(:name, :phone_number, :address, :category)
  end
end
