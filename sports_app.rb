
require "sinatra/base"

class SportsApp < Sinatra::Base
	set :data, ''

	get '/' do
		content_type :xml
		SportsApp.data.to_xml
		puts "get............................."
	end
end

