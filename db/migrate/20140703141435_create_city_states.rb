class CreateCityStates < ActiveRecord::Migration
  def change
    create_table :city_states do |t|
      t.references :city, index: true
      t.references :state, index: true

      t.timestamps
    end
  end
end
