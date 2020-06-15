class CreateWineLists < ActiveRecord::Migration[5.2]
  belongs_to :wines
  belongs_to :wine_clubs 

  def change
    create_table :wine_lists do |t|
      t.integer :wine_clubs_id
      t.integer :wines_id
    end
  end
end
