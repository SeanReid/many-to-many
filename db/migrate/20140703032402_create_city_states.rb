class CreateCityStates < ActiveRecord::Migration
  def change
    create_table :city_states do |t|
      t.integer :city_id, index: true
      t.integer :state_id, index: true

      t.timestamps
    end
  end
end
