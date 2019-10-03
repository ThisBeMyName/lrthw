# ARGV is an array that takes user input from the command line and adds it to the array.
filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

=begin
"stdin" is Standard Input. "gets" will try to read the contents of ARGV first. If there
is nothing there, it will then default to stdin. If you do have content in ARGV, you need
to use "$stdin.gets.chomp" or it will use the contents of ARGV instead.
=end
$stdin.gets

puts "Opening the file..."

=begin
'w', or write-only, truncates existing file to zero length or creates a new file for writing.
For more info on open modes: https://ruby-doc.org/core-2.2.3/IO.html#method-c-new-label-IO+Open+Mode
=end

target = open(filename, 'w')

puts "Truncating the file. Goodbye!"

=begin:
Truncates a given text after a given length if text is longer than length. For example:

'Once upon a time in a world far far away'.truncate(27)
=> "Once upon a time in a wo..."
=end
target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it."
target.close
