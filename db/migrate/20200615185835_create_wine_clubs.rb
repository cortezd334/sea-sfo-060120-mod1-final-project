class CreateWineClubs < ActiveRecord::Migration[5.2]


  def change
    create_table :wine_clubs do |t|
      t.string :name
      t.string :location
      t.boolean :membership
    end
  end
end
