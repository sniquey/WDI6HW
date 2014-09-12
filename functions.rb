def greet_the_world
	puts "Hey there crummy world, how YOU doing?"
end

greet_the_world

def add_2_and_3
	puts "About to calculate 2 + 3 for you"
	sum = 2 + 3
	sum
end

def add(num1, num2)
	puts "num1 has the value: #{num1}"
	puts "num2 has the value: #{num2}"
	result = num1 + num2
	puts "result is then: #{result}"
	result
end

result = add(2,3)
puts result


def area(length,width)
	length * width
end

def volume(length,width,height)
	area(length,width) * height
end

surface_area = area(10,30)
puts surface_area

capacity = volume(10,20,30)
puts capacity


def name_tag_generator(first, last, gender, age)
	if gender == 'f'
		if age < 19
			puts "Miss #{first} #{last}"
		else
			puts "Ms #{first} #{last}"
		end
	else
		puts "Mr #{first} #{last}"
	end
end


name_tag_generator('Julia','Cristoffersen','f',8)








