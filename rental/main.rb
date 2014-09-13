system("clear")

require 'pry'

require_relative './tenant.rb' 
require_relative './apartment.rb'
require_relative './building.rb'

chris = Tenant.new "Chris Eccleston", 23, "male"
sophie = Tenant.new "Sophie Walden", 25, "female"
helen = Tenant.new "Helen Fitz", 27, "female"

apt = Apartment.new '25b',123, 2, 15
apt2 = Apartment.new '28c', 12, 2, 1

building = Building.new '123 Fake st', 'Neo-industrial', 't', 'f', 1000
building2 = Building.new '222 Simple lane', 'Art Deco', 'f', 'f', 300

# Globals to store our data
$buildings = []
$tenants = []
$apartments = []


# Seed data
# $buildings.first.apartments[apt.name] = apt
apt.tenants << chris << sophie << helen
$apartments << apt << apt2
building.apartments[apt.name] = apt
building2.apartments[apt2.name] = apt2
$buildings << building << building2


# Greeting
puts "Welcome to Find-A-Place!"

def main_menu
	puts "What are you after:"
	puts "1. List an apartment"
	puts "2. Find an apartment"
	# puts "1. List all apartments"
	puts "q. Quit"
end

def sub_menu_2
	puts "FIND AN APARTMENT"
	puts "1. List all apartments"
	puts "2. List all buildings"
end

def read_main_selection
	main_menu
	gets.chomp.downcase
end

def read_sub_menu_2
	sub_menu_2
	gets.to_i	
end

main_menu_option = read_main_selection
sub_menu_2_option = read_sub_menu_2

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
			$buildings << Building.new(address, style, has_elevator, has_doorman, num_floors)
			puts "#{$buildings.last}"
		# # list_building_menu
	
	# end
	when '2'
		sub_menu_2_option
		if result_sub_menu_2 == 1
			# List all apartments.
			$buildings.each do |b|
				b.apartments.each do |number, apartment|
					puts apartment
				end
			end
		end

	end
end

binding.pry
