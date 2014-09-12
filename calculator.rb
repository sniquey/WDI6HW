puts "which calculator do you want? (a = Advanced/ s = Simple)"
type = (gets.chomp.downcase == 'a') 

if type

	def menu
		system("clear")
		puts "1. Exponential"
		puts "2. Logarithm of x"
		puts "3. Sine"
		puts "4. Cosine"
		puts "5. nth root"
		puts "q. Quit"
		print "Enter your selection: "
	end

	def read_selection
		menu
		gets.chomp.downcase
	end

	user_choice = read_selection


	while user_choice != 'q'
		if user_choice == "1"
			puts "Enter your base: "
			num1 = gets.to_i
			puts "Enter your power: "
			num2 = gets.to_i
			puts "Answer is: #{num1 ** num2}"
		elsif user_choice == "2"
			puts "Enter your base: "
			num1 = gets.to_i
			puts "Enter your x value: "
			num2 = gets.to_i
			puts "Answer is: #{math.log(num1,num2)}"
		elsif user_choice == "3"
			puts "Enter your number: "
			num1 = gets.to_i
			puts "Answer is: #{math.asin(num1)}"
		elsif user_choice == "4"
			puts "Enter your number: "
			num1 = gets.to_i
			puts "Answer is: #{math.acos(num1)}"
		elsif user_choice == "5"
			puts "Enter your nth root number: "
			num1 = gets.to_i
			puts "Enter your x value"
			num2 = gets.to_i
			puts "Answer is: #{num2 ** (1/num1)}"
		else
			puts "Opps! Try again. Enter a number from the menu "
		end	
		user_choice = read_selection
	end

else

	def menu
		system("clear")
		puts "1. Add"
		puts "2. Subtract"
		puts "3. Multiply"
		puts "4. Divide"
		puts "q. Quit"
		print "Enter your selection: "
	end

	def read_selection
		menu
		gets.chomp.downcase
	end

	user_choice = read_selection


	def operator(opp)
			if opp == "1"
				symbol = "+"
			end
			if opp == "2"
				symbol = "-"
			end
			if opp == "3"
				symbol = "*"
			end
			if opp == "4"
				symbol = "/"
			end
			symbol
	end 


	while user_choice != 'q'
		puts "Enter your first number: "
		num1 = gets.to_i
		puts "Enter your second number: "
		num2 = gets.to_i
		symbol = operator(user_choice)
		puts "You selected: #{num1} #{symbol} #{num2}"
		if user_choice == "1"
			puts "Answer is: #{num1 + num2}"
		elsif user_choice == "2"
			puts "Answer is: #{num1 - num2}"
		elsif user_choice == "3"
			puts "Answer is: #{num1 * num2}"
		elsif user_choice == "4"
			puts "Answer is: #{num1 / num2}"
		user_choice = read_selection
		else
			puts "Opps! Try again. Enter a number from the menu "
		end
	end
end
