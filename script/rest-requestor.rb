require 'rest-client'

puts "What method do you want to use?"
method = gets.chomp.downcase

while(method != "exit")

	puts "What path do you want to go down?"
	path = gets.chomp.downcase

	if(method == "get")
		url = "http://localhost:3000/#{path}"
		puts RestClient.get(url)
	elsif(method == "post")
		url = "http://localhost:3000/#{path}"
		RestClient.post(url, "")
	end

	puts "What method do you want to use?"
	method = gets.chomp.downcase

end