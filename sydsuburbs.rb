puts "What suburb do you live in?"
suburb = gets.chomp.downcase

case suburb
	when "hurstville"
		puts "Hooray!"
	when "lane cove"
		puts "Not bad"
	when "redfern"
		puts "Don't die..." 
	else
		puts "come back to civilisation"
end
