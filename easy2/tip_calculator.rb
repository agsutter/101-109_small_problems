# Create a simple tip calculator. The program should prompt for a bill amount
# and a tip rate. The program must compute the tip and then display both the tip
# and the total amount of the bill.

def prompt(message)
  puts "=> #{message}"
end

def tip(bill, tip_percentage)
  tip_percentage *= 0.01
  bill * tip_percentage
end

def bill_total(bill, tip_percentage)
  tip(bill, tip_percentage) + bill
end

prompt('What is the bill amount?')
bill = gets.chomp
bill.slice!('$') if bill.include?('$')
bill = bill.to_i

prompt('What is the tip percentage?')
tip_percentage = gets.chomp
tip_percentage.slice!('%') if tip_percentage.include?('%')
tip_percentage = tip_percentage.to_i

prompt("The tip is $#{format('%.2f', tip(bill, tip_percentage))}")
prompt("The total is $#{format('%.2f', bill_total(bill, tip_percentage))}")
