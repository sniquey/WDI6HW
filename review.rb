bananas = 75
surname = "Marx"

fullname = "Groucho #{surname}"

puts bananas

if 2 + 2 ==4
	puts "Maths is okay"
end

unless 2 + 2 == 5
	puts "Maths is still okay"
end

puts "Maths is okay" if 2 + 2 == 4

counter = 10
while counter >= 0
	puts "#{counter}..."
	counter -=1
end

puts "Blast off!"
puts counter

counter = 10
until counter == 0
	puts "#{counter}..."
	counter -=1
end

puts "Blast off!"
puts counter

def say_hello
	puts "Hello"
end

say_Hello

def say_hello_to(name)
	puts "Hello there, #{name}"
end

say_hello_to('Pope Boniface XVII')

def add10(n)
	n + 10
end

add10(55)

result = add10(1001)
puts result

add10(add10(add10(1)))

