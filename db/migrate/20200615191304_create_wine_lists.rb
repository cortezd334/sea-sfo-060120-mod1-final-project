class CreateWineLists < ActiveRecord::Migration[5.2]

  def change
    create_table :wine_lists do |t|
      t.integer :wine_club_id
      t.integer :wine_id
    end
  end
end
