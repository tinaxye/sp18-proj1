# Q0: Why is this error being thrown?
The error is being thrown because we don't have a Pokemon model yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The random wild Pokemon appear from being seeded into the database through the seeds.rb file by the db:seed command. Then, they randomly appear after the trainer logs in. The common factor for these possible Pokemon that appear is that they all don't have a trainer, which is why they appear.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It makes a button that says "Throw a Pokeball" and when the trainer clicks on it, it sends a patch request to the page and the capture method is run. It passes a parameter of the id of the pokemon to be captured.

# Question 3: What would you name your own Pokemon?
Crabby Pattie

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
For redirect_to I passed in the trainer_path. The trainer_path takes in one parameter of the trainer's id, so I passed in the current trainer.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
This line flashes the appropriate error message to the form page based on the validations that we put in pokemon.rb

# Give us feedback on the project and decal below!
This project was so cute!

# Extra credit: Link your Heroku deployed app
