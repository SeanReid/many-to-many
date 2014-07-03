class State < ActiveRecord::Base
  has_many :city_states
  has_many :cities, through: :city_states
end
