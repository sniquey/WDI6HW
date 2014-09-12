puts "Enter the maximum number."
max = gets.to_i

num = Random.rand(max+1)
print "Guess a number between 0 and #{max} "
guess = gets.to_i

while num != guess
	if guess < num
		puts "Nope! Try a larger number."
		print "Guess a number between 0 and #{max} "
		guess = gets.to_i
	elsif guess > num
		puts "Nope! Try a smaller number."
		print "Guess a number between 0 and #{max} "
		guess = gets.to_i
	end
end


puts "You got it!"