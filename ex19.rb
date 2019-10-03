#Function
def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "you have #{cheese_count} cheese!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man, that's enough for a party!"
  puts "Get a blanket. \n"
  puts "\n"
end

#Directly
puts "We can just give the function numbers directly:"
cheese_and_crackers(20,30)

#From the script
puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50

cheese_and_crackers(amount_of_cheese, amount_of_crackers)

#Math
puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

#Variables and math
puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)
