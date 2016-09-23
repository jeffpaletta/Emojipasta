#!/usr/bin/env ruby

input =<<-multiline

The revelation from Jesus Christ, which God gave him to show his servants what must soon take place. He made it known by sending his angel to his servant John, who testifies to everything he saw—that is, the word of God and the testimony of Jesus Christ. Blessed is the one who reads aloud the words of this prophecy, and blessed are those who hear it and take to heart what is written in it, because the time is near.

Greetings and Doxology
John,To the seven churches in the province of Asia:
Grace and peace to you from him who is, and who was, and who is to come, and from the seven spirits[a] before his throne, and from Jesus Christ, who is the faithful witness, the firstborn from the dead, and the ruler of the kings of the earth.

To him who loves us and has freed us from our sins by his blood, and has made us to be a kingdom and priests to serve his God and Father—to him be glory and power for ever and ever! Amen.
“Look, he is coming with the clouds,”
and “every eye will see him,
even those who pierced him”;
and all peoples on earth “will mourn because of him.”[c]
So shall it be! Amen.

“I am the Alpha and the Omega,” says the Lord God, “who is, and who was, and who is to come, the Almighty.”

I, John, your brother and companion in the suffering and kingdom and patient endurance that are ours in Jesus, was on the island of Patmos because of the word of God and the testimony of Jesus. On the Lord’s Day I was in the Spirit, and I heard behind me a loud voice like a trumpet,  which said: “Write on a scroll what you see and send it to the seven churches: to Ephesus, Smyrna, Pergamum, Thyatira, Sardis, Philadelphia and Laodicea.”

I turned around to see the voice that was speaking to me. And when I turned I saw seven golden lampstands, and among the lampstands was someone like a son of man, dressed in a robe reaching down to his feet and with a golden sash around his chest. The hair on his head was white like wool, as white as snow, and his eyes were like blazing fire. His feet were like bronze glowing in a furnace, and his voice was like the sound of rushing waters. In his right hand he held seven stars, and coming out of his mouth was a sharp, double-edged sword. His face was like the sun shining in all its brilliance.

When I saw him, I fell at his feet as though dead. Then he placed his right hand on me and said: “Do not be afraid. I am the First and the Last. I am the Living One; I was dead, and now look, I am alive for ever and ever! And I hold the keys of death and Hades.

 “Write, therefore, what you have seen, what is now and what will take place later. The mystery of the seven stars that you saw in my right hand and of the seven golden lampstands is this: The seven stars are the angels of the seven churches, and the seven lampstands are the seven churches.

multiline

input_2 = input.split(" ")

r = Random.new

emojis = ["😂👌💯","😒","😩😤","💀","👻🔥🍆","😩👏","😩👌","🍑👀","🔥🔥🔥","💦","🍑😩","😏🍆","😩💯🔥"]

input_2.each do |x|
	#controls the frequency of emojis, higher = less
	rr = r.rand(2)
	if rr == 1
		File.open("/Users/jeffpaletta/Documents/projects/Emojipasta/output.txt",'a'){ |file| file.write("#{x} #{emojis.sample} ") }
	else
		File.open("/Users/jeffpaletta/Documents/projects/Emojipasta/output.txt",'a'){ |file| file.write("#{x} ") }
	end
end