class CreateMaintenances < ActiveRecord::Migration
  def change
    create_table :maintenances do |t|
      t.date  :date
      t.float :cost
      t.text  :description
      t.date  :warranty_time
      t.integer :mileage
      t.integer :vehicle_id
      t.integer :warranty_status
      t.integer :maintenance_type
    end
  end
end