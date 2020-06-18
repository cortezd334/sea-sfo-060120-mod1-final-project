class Wine < ActiveRecord::Base
    has_many :wine_lists
    has_many :wine_clubs, through: :wine_lists
    has_many :favorites
    has_many :customers, through: :favorites
end