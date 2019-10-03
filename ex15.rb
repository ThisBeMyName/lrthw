filename = ARGV.first

txt = open(filename)

puts "Here's the contents of file #{filename}:"
puts "-------------------"
print txt.read

print "Type the filename again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read
txt.close
txt_again.close
