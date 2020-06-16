class CreateCustomerLists < ActiveRecord::Migration[5.2]
  
  def change
    create_table :customer_lists do |t|
      t.integer :customer_id
      t.integer :wine_club_id
    end
  end
end
