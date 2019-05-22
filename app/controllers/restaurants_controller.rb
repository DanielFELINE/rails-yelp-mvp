class RestaurantsController < ApplicationController
before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def create
    @restaurant = Restaurant.new(restaurant_params)
      if @restaurant.save
        redirect_to restaurant_path(@restaurant)
      else
        render :new
      end
  end

  def new
    @restaurant = Restaurant.new
  end

  def index
    @restaurants = Restaurant.all
  end

  def update
    @restaurant.update(restaurant_params)
        redirect_to restaurant_path(@restaurant)
    end

    def edit
    
    end

    def show
        @restaurant = Restaurant.find(params[:id])
    end

    def destroy
        @restaurant.destroy
        redirect_to restaurants_path
      end

    
  
    private

    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end
  
    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :category, :phone_number)
    end
  end