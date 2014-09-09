#This is my first WDI Ruby program
puts "hello world from Ruby"

# NUMBERS

# Integers
1
58

0
-12 # this is negative

# FLoating (decimals)
26.2
9.995
-3.14159

# STRINGS
"Some string"
"goldfish"
'single quotes'
"double quotes"
"here is a contraction: isn't it"
puts 'this is how to work around it isn\'t it'
# 'this won't work'

# BOOLEANS
true
false


## VARIABLES
a = "pineapples"
b = 42
puts a
puts b

# We use snake case for variables in Ruby.
this_is_snake_case = 'it has udnerscores between each word'

# ThisIsCalledCamelCase (used in JavaScript and for classes in Ruby)

#CONSTANTS ARE IN UPPER CASE
ANSWER_TO_LIFE_THE_UNIVERS_AND_EVERYTHING = 42
EARTH_MOON_COUNT = 1

## ARITHMETIC
2 + 2
1 - 5
4 / 2
5 / 2 # Integer division. Will round and give an integer
5.0 / 2 # will give decimal answer since we put a decimal in the division
# above is called Floating point division
5 % 2 # Looks at the remainder. Modulus operator
6 * 9
6 ** 2 # 6 to the power of 2


beth = 4
beth = beth + 2
beth +=2 # does the same as beth = beth + 2
beth -= 30

"Grape" + 'fruit' # concatinates the words

# Interpolation
"The cost is $#{beth} including GST"
# as opposed to: "The cost is $" + beth.to_s + " Including GST"
"The result is #{2 + 4}"

name = 'Juan'
beverage = 'Single malt scotch'

puts "My name is #{ name } and my favourite drink is #{beverage}."









