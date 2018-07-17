# Build a program that displays when the user will retire and how many
# years she has to work till retirement.

# Example:

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

def prompt(message)
  puts "=> #{message}"
end

def year_or_years(age, age_retire)
  return 'year' if years_of_work(age, age_retire) <= 1
  'years'
end

def years_of_work(age, age_retire)
  age_retire - age
end

def year_retire(age, age_retire, current_year)
  current_year + years_of_work(age, age_retire)
end

prompt('What is your age?')
age = gets.chomp.to_i

prompt('At what age would you like to retire?')
age_retire = gets.chomp.to_i

current_year = Time.now.year

prompt("It's #{current_year}. You will retire in " \
       "#{year_retire(age, age_retire, current_year)}.")
prompt("You only have #{years_of_work(age, age_retire)}" \
       " #{year_or_years(age, age_retire)} of work to go!")
