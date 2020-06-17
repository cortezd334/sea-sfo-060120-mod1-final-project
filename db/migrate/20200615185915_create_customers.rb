class CreateCustomers < ActiveRecord::Migration[5.2]

  def change
    create_table :customers do |t|
      t.string :name
      t.integer :age
      t.string :wine_preference, :default => "None"
      t.string :origin_preference, :default => "None"
    end
  end
end
