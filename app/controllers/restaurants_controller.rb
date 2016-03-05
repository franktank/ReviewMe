class RestaurantsController < ApplicationController
  before_action :authenticate_user!,only: [:create, :new]
  def index
  
  end

  def new
  	@restaurant = Restaurant.new
  end

  def create
  	@restaurant = Restaurant.new(restaurant_params)
  	if @restaurant.save
  	 redirect_to @restaurant
    else
      flash[:danger] = @restaurant.errors.full_messages.to_sentence  
      render 'new'
    end
  end

  def show
  	@restaurant = Restaurant.find(params[:id])
    @reviews = Review.where(restaurant_id: @restaurant)
  end	

  private
  	def restaurant_params
  		params.require(:restaurant).permit(:name, :description, :address1, :address2, :category_id,
  										   :city, :state, :zipcode, :phone, :email)
  	end	
end
