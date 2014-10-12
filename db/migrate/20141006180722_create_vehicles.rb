class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string  :vehicle_brand
      t.string  :vehicle_model
      t.string  :fabrication_year
      t.integer  :user_id
      t.integer  :mileage
      t.string   :status
      t.string   :numberplate

      t.timestamps
    end
  end
end
