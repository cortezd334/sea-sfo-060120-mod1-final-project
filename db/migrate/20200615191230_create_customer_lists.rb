class CreateCustomerLists < ActiveRecord::Migration[5.2]
  belongs_to :customers
  belongs_to :wine_clubs
  
  def change
    create_table :customer_lists do |t|
      t.integer :customers_id
      t.integer :wine_clubs_id
    end
  end
end
