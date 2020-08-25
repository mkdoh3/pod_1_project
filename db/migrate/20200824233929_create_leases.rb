class CreateLeases < ActiveRecord::Migration[6.0]
  def change
    create_table :leases do |t|
      t.text :start_date
      t.integer :contract_length
      t.integer :num_tenets
      t.integer :property_manager_id
      t.integer :property_id

      t.timestamps
    end
  end
end
