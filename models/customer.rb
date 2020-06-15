class Customer < ActiveRecord::Base
    has_many :customer_lists
    has_many :wine_clubs, through: :customer_lists

    # def customer_default_arguments(args = {:name, :age, wine_preference: 'none', origin_preference: 'none'})
    #     Customer.create do |c|
    #         c.wine_preference = args[:wine_preference]
    #         c.origin_preference = args[:origin_preference]
    #     end
    # end
end