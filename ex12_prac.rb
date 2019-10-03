puts "Please enter a money amount:"
amount = gets.chomp.to_f
ten_percent = (amount * 0.1).round(2)
puts "10% back of #{amount} is : $#{ten_percent}"
