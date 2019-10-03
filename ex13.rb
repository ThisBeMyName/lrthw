first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your second variable is: #{third}"

puts "What is your least favorite color?"
least_favorite_color = $stdin.gets.chomp

puts "Okay, I get it. You don't like #{least_favorite_color}"
