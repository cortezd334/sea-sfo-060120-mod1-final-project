class CreateCustomerLists < ActiveRecord::Migration[5.2]
  
  def change
    create_table :customer_lists do |t|
      t.integer :customers_id
      t.integer :wine_clubs_id
    end
  end
end
