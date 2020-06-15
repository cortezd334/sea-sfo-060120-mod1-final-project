class CreateWineClubs < ActiveRecord::Migration[5.2]
  has_many :customer_lists
  has_many :customers, through: :customer_lists

  has_many :wine_lists
  has_many :wines, through: :wine_lists

  def change
    create_table :wine_clubs do |t|
      t.string :name
      t.string :location
      t.boolean :membership
    end
  end
end
