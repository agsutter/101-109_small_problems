# Write a program that will ask for user's name. The program will then
# greet the user. If the user writes "name!" then the computer yells back
# to the user.

def exclaim?(input)
  if input.include?('!')
    input = input.chop
    puts "HELLO #{input.upcase}. WHY ARE WE SCREAMING?"
  else
    puts "Hello, #{input}."
  end
end

puts 'What is your name?'
username = gets.capitalize.chomp

exclaim?(username)
