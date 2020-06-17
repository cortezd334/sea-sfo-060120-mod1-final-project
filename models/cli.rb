class CLI
    attr_accessor :customer, :age

    # def assign_input_to_age
    #     @age 
    # end

    def age_verification
        puts "We want you to enjoy our wines, but we don't encourage underage drinking! So we don't get sued, how old are you?"
        input = gets.chomp.to_i
        # @age = input
        if input < 21
            puts "Sorry, come back when you're older!!"
        else 
            puts "Let's start drinking!"
        end
    end

    def welcome_user
        puts "Please enter your name: "
        user = gets.chomp
        @customer = Customer.find_by(name: user)
        if @customer 
            puts "Welcome back #{customer.name}! Let's get this party started!!"
        else
            @customer = Customer.create(name: user)
            puts "Welcome #{customer.name}! Let's get this party started!!"
        end
    end
    
    def display_preferences
        puts "Wine preference: "
        puts "\t" + customer.wine_preference

        puts "Is it time to update? (y/n)"
        input = gets.chomp
        if input == "y" || "Y" || "yes" || "Yes" || "YES"
            #wine preference is update and displayed
            puts "\nWhat do you prefer, red or white?"
            wine_pref_input = gets.chomp
            if wine_pref_input = "red" || "Red" || "RED"
                customer.wine_preference = "Red"
                puts "\nGot it! Wine preference: "
                puts "\t" + customer.wine_preference
            elsif wine_pref_input = "white" || "White" ||"WHITE"
                customer.wine_preference = "White"
                puts "\nGot it! Wine preference: "
                puts "\t" + customer.wine_preference
            end
        elsif input == "n" || "N" || "no" || "NO" || "No"
            puts "Okie dokie"
        end
    end
end
