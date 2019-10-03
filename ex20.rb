#This creates a variable and assigns the input given in the terminal
input_file = ARGV.first

#A function that takes an input and uses the read method on it
def print_all(f)
  puts f.read
end

#A function that takes an input and moves the file pointer back to the start of the file (with .seek(0))
def rewind(f)
  #.seek "goes to" or "attempts to find" a given position (as integer) in a stream.
  f.seek(0)
end

#
def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"
end

#Uses the open method on the file given on line 1
current_file = open(input_file)

#Prints text
puts "First let's print the whole file:\n"

#Reads the file given on line 1, and opened on line 21
print_all(current_file)

#Prints text
puts "Now let's rewind, kind of like a tape"

#Moves the file pointer to the beginning of the file given
rewind(current_file)

#Prints text
puts "Let's print three lines:"

#Creates a variable set to 1
current_line = 1
#
print_a_line(current_line, current_file)

#Adds 1 to the current_line variable
current_line += 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)
