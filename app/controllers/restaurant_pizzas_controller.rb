class RestaurantPizzasController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :invalid_record
    def index
        restaurant_pizza = RestaurantPizza.all
        render json: restaurant_pizza, status: :ok
    end
    def create
        restaurant_pizza = RestaurantPizza.create!(restaurant_params)
        pizza_record = Pizza.find(restaurant_pizza.pizza_id)
        render json: pizza_record,status: :created
    end

    private

    def restaurant_params
        params.permit(:restaurant_id, :pizza_id, :price)
    end

    def invalid_record
        render json: {errors: "[validation errors]"}, status: :unprocessable_entity
    end
end
