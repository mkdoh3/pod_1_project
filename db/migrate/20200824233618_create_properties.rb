class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :address
      t.string :unit_number
      t.integer :monthly_cost
      t.integer :num_bedrooms
      t.float :num_bathroom
      t.integer :square_footage

      t.timestamps
    end
  end
end
