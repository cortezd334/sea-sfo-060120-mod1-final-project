class CreateWines < ActiveRecord::Migration[5.2]

  
  def change
    create_table :wines do |t|
      t.string :name
      t.integer :vintage
      t.string :type
      t.integer :price
      t.string :origin
    end
  end
end
