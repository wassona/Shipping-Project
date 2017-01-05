class AddLocationToBoats < ActiveRecord::Migration[5.0]
  def change
  	add_column :boats, :location_id, :integer
  	add_column :locations, :boat_id, :integer
  end
end
