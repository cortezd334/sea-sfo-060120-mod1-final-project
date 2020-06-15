class Customer < ActiveRecord::Base

    def customer_default_arguments(args = {wine_preference: 'none', origin_preference: 'none'})
        Customer.create do |c|
            c.wine_preference = args[:wine_preference]
            c.origin_preference = args[:origin_preference]
        end
    end
end