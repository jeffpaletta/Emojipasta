input =<<-multiline
#put the text that you want to have emojis added to here, can be multi line 
WHAT DA FUQ
multiline

#splits the text where spaces are, can be replaced with any character
input_2 = input.split(" ")

r = Random.new

#put the emojis that you want to use in to this array. example: emojis = ["💇","👅","💀"]
emojis = ["💇","👅","💀"]

input_2.each do |x|
	#controls the frequency of emojis, higher = less
	rr = r.rand(2)
	if rr == 1
		File.open("/path/to/the/file/you/want/to/write/to.txt",'a'){ |file| file.write("#{x} #{emojis.sample} ") }
	else
		File.open("/path/to/the/file/you/want/to/write/to.txt",'a'){ |file| file.write("#{x} ") }
	end
end