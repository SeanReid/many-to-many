json.array!(@city_states) do |city_state|
  json.extract! city_state, :id, :city_id, :state_id
  json.url city_state_url(city_state, format: :json)
end
