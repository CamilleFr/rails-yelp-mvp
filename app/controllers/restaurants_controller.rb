class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create!(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  # def edit
  #   @restaurant = Restaurant.find(params[:id])
  # end

  # def update
  #   @restaurant = Restaurant.update!(restaurant.id)
  # end

  # def delete
  #   @restaurant = Restaurant.delete

end


private

def restaurant_params
 params.require(:restaurant).permit( :name, :address, :phone_number, :category)
end
