require_relative '../config/environment'

system("clear")
app = CLI.new

app.age_verification

app.welcome_user

app.display_preferences 

binding.pry