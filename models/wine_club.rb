class WineClub < ActiveRecord::Base
    has_many :customer_lists
    has_many :customers, through: :customer_lists
  
    has_many :wine_lists
    has_many :wines, through: :wine_lists
end
