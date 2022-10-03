class RestaurantsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :unfound_response
    def index
        restaurants = Restaurant.all
        render json: restaurants,status: :ok
    end
    
    def show
        restaurant = Restaurant.find(params[:id])
        render json: restaurant,serializer: RestaurantPizazaSerializer,status: :ok

    end

    def destroy
        restaurant = Restaurant.find(params[:id])
        restaurant.destroy
        render json: {}, status: :no_content
    end

    private
    def unfound_response
        render json: {error: "Restaurant not found"},status: :not_found
    end
end
