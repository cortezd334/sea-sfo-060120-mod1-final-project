class CLI
    attr_accessor :customer, :age

    # def assign_input_to_age
    #     @age 
    # end

    def age_verification
        puts "We want you to enjoy our wines, but we don't encourage underage drinking! So we don't get in trouble, how old are you? (Please enter a number)"
        input = gets.chomp

        if input == ""
            age_verification
        elsif input > "21"
            puts "Let's start drinking!"
            welcome_user
        elsif input < "21"
            puts "Sorry, come back when you're older!!"
        end
    end

    def welcome_user
        puts "\nPlease enter your name: "
        user = gets.chomp
        @customer = Customer.find_by(name: user)
        if @customer 
            puts "\nWelcome back #{customer.name}! Let's get this party started!!"
        else
            @customer = Customer.create(name: user)
            puts "Welcome #{customer.name}! Let's get this party started!!"
        end
        display_preferences
    end
    
    def display_preferences
        puts "\nWine preference: "
        puts "\t" + customer.wine_preference

        puts "\nIs it time to update? (y/n)"
        input = gets.chomp
        if input == "y" || input == "Y" || input == "yes" || input == "Yes" || input == "YES"
            puts "\nWhat do you prefer, red or white?"
            wine_pref_input = gets.chomp
            if wine_pref_input == "red" || wine_pref_input == "Red" || wine_pref_input == "RED"
                customer.wine_preference = "Red"
                puts "\nGot it! Wine preference updated: "
                puts "\t" + customer.wine_preference
            elsif wine_pref_input == "white" || wine_pref_input == "White" || wine_pref_input == "WHITE"
                customer.wine_preference = "White"
                puts "\nGot it! Wine preference updated: "
                puts "\t" + customer.wine_preference
            else
                puts "Okay"
            end   
        elsif input == "n" || input == "N" || input == "no" || input == "NO" || input == "No"
            puts "Okie dokie\n"
        end
        main_menu
    end

    def main_menu
        prompt1 = TTY::Prompt.new
        prompt1.select("What would you like to do?", cycle: true) do |menu|
            menu.choice "See Wine Clubs", -> {display_wine_clubs}
            menu.choice "Wine Lists Based Off Of Vintage", -> {}
            menu.choice "Wine Lists Based Off Of My Wine Preference", -> {}
            menu.choice "My Wine Preference", -> {display_preferences} #possibly edit method so that only update/no questions
            menu.choice "My Favorite Wine Lists", -> {}
            #w/in ability to add/delete wine lists to fav
        end
    end

    def display_wine_clubs
        wine_club_list = WineClub.select(:name)
        wine_club_list = wine_club_list.collect { |club| 
            club.name }
        wine_club_list = wine_club_list.join(", ")
        # wine_club_list = wine_club_list.each {|names| names + "\n"}
        puts "Here are a list of Wine Clubs \n \n#{wine_club_list}"
    end
    #if time permits, come back to make into list rather than paragraph
end
