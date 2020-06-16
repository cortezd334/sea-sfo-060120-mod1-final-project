class Customer < ActiveRecord::Base
    has_many :customer_lists
    has_many :wine_clubs, through: :customer_lists
end