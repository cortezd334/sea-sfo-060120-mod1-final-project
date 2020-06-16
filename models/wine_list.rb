class WineList < ActiveRecord::Base
    belongs_to :wines
    belongs_to :wine_clubs
end