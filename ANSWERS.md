# Q0: Why is this error being thrown?
Migrations are pending.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
They don't have trainers yet. They're appearing randomly from randomly generated Pokemon in the seed.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It's sending the parameters to the capture method in the Pokemon controller and patching to it.

# Question 3: What would you name your own Pokemon?
I would just name my Pokemon their Pokemon type because I don't like nicknames.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
You want to redirect it back to the original trainer so that you can continue to damage the Pokemon without going to the homepage again. It's ok not to have a path there because of the Devise that we have that allows us to just use "current_trainer".

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It lets us see the error message on our form.

# Give us feedback on the project and decal below!
Some parts were confusing but the hints were very helpful. I think the decal is fun, but challenging because it's still sort of difficult to determine what routes are needed and what does what. Just lots of syntactical stuff.
# Extra credit: Link your Heroku deployed app
