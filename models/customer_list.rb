class CustomerList < ActiveRecord::Base
    belongs_to :customers
    belongs_to :wine_clubs
end