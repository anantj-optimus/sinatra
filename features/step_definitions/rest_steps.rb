require 'net/http'
require 'open-uri'
statusParsed = "";
Given(/^the system knows about the following sports$/) do

end 

When /^the client requests GET "(.*)"$/ do |path|

	io = open(path) 
	puts "status....."
	test = io.status
	statusParsed = test[0]
end

Then /^response should be JSON:$/ do |json|
	JSON.parse(last_response.body).should == JSON.parse(json)
end

Then /^response should be "([^"]*)"$/ do |status|
	
if status == statusParsed
	puts "Response OK"
else
	puts "Response ERROR"
end
	
	
end

Then /^the JSON response should be an array with (\d+) "([^"]*)" elements$/ do |num, name|
page = JSON.parse(last_response.body)
  page.map { |d| d[name] }.length.should == num.to_i
end


