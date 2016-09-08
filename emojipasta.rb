#!/usr/local/Cellar/ruby/1.9.3-p194/bin/env ruby

input =<<-multiline
#A NICE LONG MESSAGE FOR TESTING THIS PICE OF SHIT SMH HARAMBE DIDNT DIE FOR THIS SHIT
multiline

input_2 = input.split(" ")

r = Random.new

emojis = ["😂","😒","🤔","😩","😤","💀","👻","👏","👌","👀","🔥","💦","🍑","🍆","❌","💯"]

input_2.each do |x|
	#controls the frequency of emojis, higher = less
	rr = r.rand(2)
	if rr == 1
		File.open("/path/to/the/file/you/want/to/write/to.txt",'a'){ |file| file.write("#{x} #{emojis.sample} ") }
	else
		File.open("/path/to/the/file/you/want/to/write/to.txt",'a'){ |file| file.write("#{x} ") }
	end
end