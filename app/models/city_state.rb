class CityState < ActiveRecord::Base
  belongs_to :city
  belongs_to :state
end
