require "pry"

a = ["Anil", "Erik", "Jonathan"]

p a[1]

a << "Veronique"

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

p h[1]
p h[:two]
p h["two"]

h[3] = "Three"
h[:four] = "4"

is = {true => "It's true!", false => "It's false"}
# 1. "It's true"
p is[2 + 2 == 4]
# 2. "it's false"
p is["Erik" == "Jonathan"]
# 3. "it's false"
p is[9 > 10]
# 4. {true => "It's true!"}
p is[0]
# 5. nil
p is["Erik"]
# 6. nil

users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  }
}

#1
p users["Jonathan"][:twitter]

#2
users["Erik"][:favorite_numbers].push 7
p users

#3
users["veronique"] = {:twitter => "sniquey", :favorite_numbers => [12,14,15]}
p users["veronique"][:favorite_numbers]

#4
p users["Erik"][:favorite_numbers]

#5
p users["Erik"][:favorite_numbers].sort.first
p users["Erik"][:favorite_numbers].sort[0]
p users["Erik"][:favorite_numbers].min

#6
p users["Anil"][:favorite_numbers].select { |x| x % 2 == 0 }
p users["Anil"][:favorite_numbers].select { |x| x.even? }
# odds = nums.select do |n|
# 	(! n.even?)
# end


#7
p users["Erik"][:favorite_numbers] & users["Jonathan"][:favorite_numbers] & users["Anil"][:favorite_numbers]

#8

binding.pry