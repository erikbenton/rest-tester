require 'rest-client'
puts "What path do you want to go down?"
path = gets.chomp.downcase

while(path != "exit")
	url = "http://localhost:3000/#{path}"
	puts RestClient.get(url)
	puts "What path do you want to go down?"
	path = gets.chomp.downcase
end