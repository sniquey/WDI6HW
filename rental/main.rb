system("clear")

require 'pry'

require_relative './tenant.rb' 
require_relative './apartment.rb'
require_relative './building.rb'

chris = Tenant.new("Chris Eccleston", 23, "male")

apt = Apartment.new('25b',123, 2, 15)

building = Building.new('123 Fake st', 'Neo-industrial', true, false, 1000)

# Globals to store our data
$buildings = []
$tenants = []
$apartments = []


# Seed data
$buildings.push building
$buildings.first.apartments[apt.name] = apt
$buildings.first.apartments[apt.name].tenants << chris

# Greeting
puts "Welcome to Find-A-Place!"

def main_menu
	puts "What are you after:"
	puts "1. List an apartment for rent"
	puts "2. Find an apartment for rent"
	# puts "1. List all apartments"
	puts "q. Quit"
end


def read_main_selection
	main_menu
	gets.chomp.downcase
end

main_menu_option = read_main_selection

until main_menu_option == 'q'
	case main_menu_option
	when '1'
		# Find out apartment attributes
		# system('clear')
		# def list_building_menu
			puts "Please enter the building information:"
			print "What is the address? "
			address = gets.chomp
			print "What is the style? "
			style = gets.chomp
			print "Does the building have an elevator? (yes/no) "
			has_elevator = gets.chomp
			print "Does the building have a doorman? (yes/no) "
			has_doorman = gets.chomp
			print "How many floors are there in the building? "
			num_floors = gets.to_i
			building = Building.new(address, style, has_elevator, has_doorman, num_floors)
		# list_building_menu
		puts "#{@address} and #{@style} and #{@has_doorman} and #{@num_floors}"
	# end
	when '2'
		# List all apartments.
		$buildings.each do |b|
			b.apartments.each do |number, apartment|
				puts apartment
			end
		end

		main_menu_option = read_main_selection
	end
end

