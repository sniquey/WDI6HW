puts "Welcome to the Big Brother Database"

print "What is your first name? "
first = gets.chomp

print "What is your surname? "
surname = gets

puts "Your full name is #{first} #{surname.chomp}"

print "What is your address? "
address = gets.chomp

puts "Your name is #{first} #{surname.chomp} and you live at #{address}"