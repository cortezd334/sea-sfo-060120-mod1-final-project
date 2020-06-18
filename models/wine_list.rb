class WineList < ActiveRecord::Base
    belongs_to :wine
    belongs_to :wine_club
end