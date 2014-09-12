class Person
	attr_accessor :age, :gender, :name, :instrument
	def initialize(age, gender, name, instrument)
		puts "NEW PERSON HAS BEEN CREATED"	
		@age = age
		@gender = gender
		@name = name
		@instrument = instrument
	end

	def play 
		puts "#{@name} is playing their #{@instrument}"
	end

 
	def speak
		puts "Hello, I must be going. By the way i am #{age} years old."
	end

	def talk(words_to_say)
		puts "Well, #{words_to_say}"
	end
end


require 'pry'
binding.pry