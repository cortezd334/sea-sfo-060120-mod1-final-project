class CreateCustomers < ActiveRecord::Migration[5.2]
  has_many :customer_lists
  has_many :wine_clubs, through: :customer_lists

  def change
    create_table :customers do |t|
      t.string :name
      t.integer :age
      t.string :wine_preference
      t.sting :origin_preference
    end
  end
end
