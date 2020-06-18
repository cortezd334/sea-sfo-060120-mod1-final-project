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
        prompt3 = TTY::Prompt.new
        prompt3.select("\n Wine Preferences: #{customer.wine_preference}", cycle: true, echo:false) do |menu|
            menu.choice "Change Wine Preference To Red", -> {change_wine_red}
            menu.choice "Change Wine Preference To White", -> {change_wine_white}
            menu.choice "Delete Wine Preference", -> {delete_wine}
            menu.choice "Go Back To Main Menu?", -> {main_menu}
        end
    end

    def change_wine_red
        customer.wine_preference = "Red"
        display_preferences
    end

    def change_wine_white
        customer.wine_preference = "White"
        display_preferences
    end

    def delete_wine
        customer.wine_preference = "None"
        display_preferences
    end

    def main_menu
        prompt1 = TTY::Prompt.new
        prompt1.select("What would you like to do?", cycle: true, echo:false) do |menu|
            menu.choice "See Wine Clubs", -> {display_wine_clubs}
            menu.choice "Wine Lists Based Off Of Vintage", -> {vintage}
            menu.choice "Wine Lists Based Off Of My Wine Preference", -> {wine_preference}
            menu.choice "My Wine Preference", -> {display_preferences} #possibly edit method so that only update/no questions
            menu.choice "My Favorite Wine Lists", -> {}
            #w/in ability to add/delete wine lists to fav
        end
    end

    def display_wine_clubs
        prompt2 = TTY::Prompt.new
        prompt2.multi_select("To View Wine Lists Select As Many Wine Clubs As You Like...We're Not Judging ;) \n", cycle: true, echo: false) do |menu|
            menu.choice "DeLille Cellars", -> {helper(16)}
            menu.choice "Chateau Ste. Michelle", -> {helper(17)}
            menu.choice "Aspenwood Cellars", -> {helper(18)}
            menu.choice "Damsel Cellars", -> {helper(19)}
            menu.choice "Haystack Needle Winery", -> {helper(20)}
            menu.choice "Artesa Vineyards", -> {helper(21)}
            menu.choice "Monticello Vineyards", -> {helper(22)}
            menu.choice "Chimney Rock Wineryey", -> {helper(23)}
            menu.choice "Luna Vineyards", -> {helper(24)}
            menu.choice "Beringer Vineyards", -> {helper(25)}
            menu.choice "Chateau de Pommard", -> {helper(26)}
            menu.choice "Chateau Marsannay", -> {helper(27)}
            menu.choice "Chateau de la Cree", -> {helper(28)}
            menu.choice "Maison Albert Bichot", -> {helper(29)}
            menu.choice "Domaine Comte Senard", -> {helper(30)}
        end
    end

    def helper(input)
        wineids = WineList.where(wine_club_id: input).pluck(:wine_id)
        winenames = Wine.where(id: wineids).pluck(:name)
        clubname = WineClub.where(id: input).pluck(:name).join(" ")
        
        puts clubname + ":" 
        puts "\n"
        puts winenames
        puts "\n"
        puts "\n"

        #fav_wine_list
    end

    def vintage
        puts "\n Enter A Vintage Year You'd Like To See (But Stick To The 2000s, We Don't Want You To Break The Bank)\n"

        input = gets.chomp
        year = Wine.where(vintage: input)
        year = year.collect {|wine| wine.vintage}.uniq
        year = year.join("")
        wine = Wine.where(vintage: input).pluck(:name, :grape, :price, :origin)
        # binding.pry
       if input == year
            puts "NAME, RED/WHITE, PRICE, ORIGIN"
            puts wine ##need a way to fix prints on screen
        else
            puts "\n Oops! Looks Like This Is Out Of Your Price Range"
            vintage
        end
    end

    def wine_preference
        puts "\n What type of wine are you in the mood for?\n"

        input = gets.chomp
        input = input.capitalize
        rorw = Wine.where(grape: input)
        rorw = rorw.collect {|wine| wine.grape}.uniq
        rorw = rorw.join("")
        wine = Wine.where(grape: input).pluck(:name, :vintage, :price, :origin)
        # binding.pry
        if input == rorw
            puts "NAME, RED/WHITE, PRICE, ORIGIN"
            puts wine ##need a way to fix prints on screen
        else
            puts "\n We Don't Want To Overwhelm You, Stick To Red Or White"
            wine_preference
        end

    end

    def fav_wine_lists
        
        #***we need to keep this linked to customer!
        #we want to be able to shovel in a wine list
        #is there a way to keep these seperate (at a glance)
        #we also need a way to save a wine list to array when viewing

        Customer.new_column << helper(input)

    end
    # def come_back_to_this_code
    #     wine_club_list = WineClub.select(:name)
    #     wine_club_list = wine_club_list.collect {|club| club.name}
    #     wine_club_list = wine_club_list.join(", ")
    #     # wine_club_list = wine_club_list.each {|names| names + "\n"}
    #     puts "Here are a list of Wine Clubs \n \n#{wine_club_list}"
    # end
    #if time permits, come back to make into list rather than paragraph
end
