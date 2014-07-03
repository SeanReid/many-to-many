class City < ActiveRecord::Base
  has_many :city_states
  has_many :states, through: :city_states


  def share(state)
    states << state
  end
end
