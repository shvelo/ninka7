#!/usr/bin/env ruby

files = []

data = "var data = \[\n"

Dir.glob "img/gallery/*" do |file|
	files << file
end

files.sort.each do |file|
	data += "\t{ image : '" + file + "' },\n"
end

data += "\];"

File.open "js/data.js", "w+" do |file|
	file.write data
end