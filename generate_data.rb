#!/usr/bin/env ruby

data = "var data = \["

Dir.glob "img/gallery/*" do |file|
	data += "{ image : '" + file + "'},"
end

data[-1] = "" if data[-1] == ","

data += "\];"

File.open "js/data.js", "w+" do |file|
	file.write data
end