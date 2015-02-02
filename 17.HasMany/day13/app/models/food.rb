# Fat Models, Skinny Controllers
class Food < ActiveRecord::Base
  # restaurant_id - integer
  has_many :restaurants_foods
  has_many :restaurants, through :restaurant_foods
  #@food.restaurants

  EXPIRED_OPTIONS = [
    ["True", true],
    ["False", false]
  ]

end
