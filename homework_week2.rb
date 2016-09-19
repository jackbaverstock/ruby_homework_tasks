# ruby_homework_tasks

#Program that asks for 3 lines from the user and writes them to a file, then makes a copy of the file with the lines in reverse order.

output_file, copy_reverse_file = ARGV
puts "I'm interested in your hobbies. Let's fill out the form #{output_file} and copy it in reverse order to another file"

puts "Please enter your top three hobbies"

target = open(output_file, 'w')

target.truncate(0)

print "Hobby 1 - "
hobby1 = $stdin.gets.chomp
print "Hobby 2 - "
hobby2 = $stdin.gets.chomp
print "Hobby 3 - "
hobby3 = $stdin.gets.chomp

puts "Thanks for sharing! I'll note these down..."

target.write(hobby1)
target.write("\n")
target.write(hobby2)
target.write("\n")
target.write(hobby3)
target.write("\n")

target.close

puts "That's complete. Now let's copy this over to #{copy_reverse_file} in reverse order!"

in_file = open(output_file)
indata = in_file.read

out_file = open(copy_reverse_file, 'w')
outdata = indata.reverse
out_file.write(outdata)

in_file.close
out_file.close
