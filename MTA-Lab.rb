
# variables for the stops
stop_1 = "1st"
stop_3 = "3rd"
stop_6 = "6th"
stop_8n = "8th on N"
stop_8l = "8th on L"
stop_23n = "23rd on N"
stop_236 = "23rd on 6th"
stop_28n = "28th on N"
stop_286 = "28th on 6th"
stop_33 = "33rd"
stop_34 = "34th"
int = "Union Square"
ast = "Astor Place"
times = "Times Square"

# Array of stops
$subway_station = [stop_1, stop_3, stop_6, stop_8n, stop_8l, stop_23n, stop_236, stop_28n, stop_286, stop_33, stop_34, int, ast, times] 

# arrays of stops for each of the 3 lines
$line_n = [times, stop_34, stop_28n, stop_23n, int, stop_8n]
$line_l = [stop_8l, stop_6, int, stop_3, stop_1]
$line_6 = [stop_33,stop_286,stop_236, int, ast]


# define subway hash that links keys of the lines to values of the arrays of stops corresponding to the lines
# subway = {
# 	"Line N" => line_n,
# 	"Line L" => line_l,
# 	"6th Line" => line_6,
# }

# Main menu listing all stops on the New York Subway
def menu
	puts "WELCOME TO THE NEW YORK SUBWAY!"
	puts "--------------------"
	puts "STOP SELECTION:"
	puts "--------------------"
	puts "1. 1st Stop"
	puts "2. 3rd Stop"
	puts "3. 6th Stop"
	puts "4. 8th Stop on N"
	puts "5. 8th Stop on L"
	puts "6. 23rd Stop on N"
	puts "7. 23rd Stop on 6th"
	puts "8. 28th Stop on N"
	puts "9. 28th Stop on 6th"
	puts "10. 33rd Stop"
	puts "11. 34th Stop"
	puts "12. Union Square"
	puts "13. Astor Place"
	puts "14. Times Square"
	puts "--------------------"
end


# def same_line(x)
# 	if ((x).include? subway_station[get_on - 1]) && ((x).include? subway_station[get_off - 1])
# 	travel(x)
# end



# Get starting point and end point from user
menu
print "Please select your starting point: "
get_on = gets.to_i
print "Please select your end point: "
get_off = gets.to_i

def travel(point1, point2)
	if ($line_n.include? $subway_station[point1 - 1]) && ($line_n.include? $subway_station[point2 - 1])
		puts "There is a direct train to your destination!"
		puts "Board the train at #{$subway_station[point1 - 1]}"
		start_point = $line_n.index $subway_station[point1 - 1]
		end_point = $line_n.index $subway_station[point2 - 1]
		if start_point < end_point
			next_stop = start_point + 1
			while next_stop < end_point
			puts "Train goes through #{$line_n[next_stop]} station"
			next_stop += 1
			end
			puts "Get off at the next stop which is your destination: #{$subway_station[point2 -1]}."
		end
		if end_point < start_point
			next_stop = start_point + 1
			while next_stop > end_point
			puts "Train goes through #{point1[next_stop]} station"
			next_stop -= 1
			end
			puts "Get off at the next stop which is your destination: #{$subway_station[point2 -1]}."
		end
	end
end


if ((1..14).include? get_on) && ((1..14).include? get_off)
	system("clear")
	puts "You will be travelling from #{$subway_station[get_on - 1]} and arriving at #{$subway_station[get_off - 1]}"
	#case for start and finish stops being on the same line
	#case for travelling only on line N
	if ($line_n.include? $subway_station[get_on - 1]) && ($line_n.include? $subway_station[get_off - 1])
		travel(get_on, get_off)
	end
	if ($line_l.include? $subway_station[get_on - 1]) && ($line_l.include? $subway_station[get_off - 1])
		travel(get_on, get_off)
	end
	if ($line_6.include? $subway_station[get_on - 1]) && ($line_6.include? $subway_station[get_off - 1])
		travel(get_on, get_off)
	end


	# #case for travelling only on line L
	# if (line_l.include? subway_station[get_on - 1]) && (line_l.include? subway_station[get_off - 1])
	# 	puts "There is a direct train to your destination!"
	# 	puts "Board the train at #{subway_station[get_on - 1]}"
	# 	start_point = line_l.index subway_station[get_on - 1]
	# 	end_point = line_l.index subway_station[get_off - 1]
	# 	if start_point < end_point
	# 		next_stop = start_point + 1
	# 		while next_stop < end_point
	# 		puts "Train goes through #{line_l[next_stop]} station"
	# 		next_stop += 1
	# 		end
	# 		puts "Get off at the next stop which is your destination: #{subway_station[get_off -1]}."
	# 	end
	# 	if end_point < start_point
	# 		next_stop = start_point + 1
	# 		while next_stop > end_point
	# 		puts "Train goes through #{line_l[next_stop]} station"
	# 		next_stop -= 1
	# 		end
	# 		puts "Get off at the next stop which is your destination: #{subway_station[get_off -1]}."
	# 	end
	# end
	# #case for travelling only on line 6
	# if (line_6.include? subway_station[get_on - 1]) && (line_6.include? subway_station[get_off - 1])
	# 	puts "There is a direct train to your destination!"
	# 	puts "Board the train at #{subway_station[get_on - 1]}"
	# 	start_point = line_6.index subway_station[get_on - 1]
	# 	end_point = line_6.index subway_station[get_off - 1]
	# 	if start_point < end_point
	# 		next_stop = start_point + 1
	# 		while next_stop < end_point
	# 		puts "Train goes through #{line_6[next_stop]} station"
	# 		next_stop += 1
	# 		end
	# 		puts "Get off at the next stop which is your destination: #{subway_station[get_off -1]}."
	# 	end
	# 	if end_point < start_point
	# 		next_stop = start_point + 1
	# 		while next_stop > end_point
	# 		puts "Train goes through #{line_6[next_stop]} station"
	# 		next_stop -= 1
	# 		end
	# 		puts "Get off at the next stop which is your destination: #{subway_station[get_off -1]}."
	# 	end
	# end

#case for start on line n and end on line l
	if ($line_n.include? $subway_station[get_on - 1]) && ($line_l.include? $subway_station[get_off - 1])
		puts "You will need to change trains at UNION SQUARE!"
		puts "Board the train at #{subway_station[get_on - 1]}"
		start_point = line_n.index subway_station[get_on - 1]
		union_point = 4
		end_point = line_l.index subway_station[get_off - 1]
		if start_point < union_point
			next_stop = start_point + 1
			while next_stop < union_point
			puts "Train goes through #{line_n[next_stop]} station"
			next_stop += 1
			end
		end
		puts "Get off at the next stop to change to Line L: #{line_n[4]}."
		start_point = line_l.index int
		next_stop = start_point + 1
		while next_stop < end_point
			puts "Train goes through #{line_n[next_stop]} station"
			next_stop += 1
		end
		puts "Get off at the next stop which is your destination: #{subway_station[get_off -1]}."
	end
#case for start on line n and end on line 6

# case for start on line l and end on line 6

# case for start on line l and end on line n

# case for start on line 6 and end on line n

# case for start on line 6 and end on line l



else
	puts "WTF HAS HAPPENED."
end





