#Coding time a week
print "Give me a number: "
number = gets.chomp.to_i

def practice(number)
  puts "\n"
  puts "If you code for #{number} number a day, that's #{number * 7} hours a week."
  puts "That is also #{number * 7 * 52} hours a year!"
  puts "Think of all you would learn in that time... all with just #{} hours a day."
end

practice(number)

#Yearly salary calculator
print "How much do you make an hour: "
wage = gets.chomp.to_i

def yearlySalery(wage)
  puts "\n"
  puts "If you made $#{wage} an hour, that's $#{wage * 40} a week, and $#{wage * 40 * 52} a year!"
end

yearlySalery(wage)
