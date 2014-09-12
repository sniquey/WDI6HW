puts "What suburb do you live in? "
suburb = gets.chomp.downcase

# case suburb
# 	when "hurstville"
# 		puts "Hooray!"
# 	when "lane cove"
# 		puts "Not bad"
# 	when "redfern"
# 		puts "Don't die..." 
# 	else
# 		puts "come back to civilisation"
# end

def suburb_to_check(s)
	if ['bondi', 'coogee', 'clovelly', 'centenial park'].include? s
		puts "parking is hard"
	elsif s == 'chatswood'
		puts "good ramen"
	else
		puts "I'm sure that's very nice"
end
end

suburb_to_check(suburb)