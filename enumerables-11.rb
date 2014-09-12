bros = ['Groucho','Harpo','Chico']

# counter = 0
# while counter < bros.length
# 	puts bros[counter]
# 	counter += 1
# end

prefex = "Mister"
bros.each do |brother|
	puts "Yay pizza for #{brother} Marx"
end

scores = [247, 2328, 111, 58, 17]
scores.each do |brother|
	puts "$" * brother
end

#Hashes
instruments = {
	'groucho' => 'guitar',
	'harpo' => 'harp',
	'chico' => 'piano'
}

# instruments.each do |pair|
# 	puts "#{pair[0]} plays #{pair[1]}"
# end

instruments.each do |key, value|
	puts "#{key} plays #{value}"
end


# gear = ['piano','guitar','trumpet','harp','harmonica']
# gear.include? 'guitar'

groucho = {
	:instrument => 'guitar',
	:vice => 'mutism',
	:yob => 1888
}

harpo = {
	:instrument => 'harp',
	:vice => 'cigars',
	:yob => 1890
}

chico = {
	:instrument => 'piano',
	:vice => 'women',
	:yob => 1890
}

bros = [groucho, harpo, chico]

guitar_bros = bros.select do |b|
	b[:instrument] == 'guitar' || b[:instrument] == 'piano'
end

guitar_bros







