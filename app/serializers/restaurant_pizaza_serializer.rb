class RestaurantPizazaSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :phone_number
  has_many :pizzas
end
