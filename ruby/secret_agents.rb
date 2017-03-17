def encrypt(word)
	index = 0
length = word.length
while index < length

#space characters should remain space characters, no change made
	if word[index] == " "
		word[index] = word[index]
##Release3 edge case conditional logic: z should return a
	elsif word[index] == "z"
		word[index] = "a"
#should go through word change(with bang! method) forward one letter at a time
	else
		word[index] = word[index].next!
	end
	index += 1
end
p word
end

def decrypt(word)
	letters = "abcdefghijklmnopqrstuvwxyz"
	index = 0
	while index < word.length
		if word[index] == " "
			word[index] = word[index]
#Release3 edge case conditional logic
		elsif word[index] == "a"
		word[index] = "z"

		else
			i = letters.index(word[index])-1
			word[index] = letters[i]
		end
	index += 1
	end
p word
end
#driver code
# encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")
# decrypt(encrypt("swordfish"))

#Release 5: add an interface:
word = ""
puts "What is your password?"
word = gets.chomp

puts "Would you like to encrypt or decrypt your password?"
ans = gets.chomp
if ans == "encrypt"
  puts "Your encrypted word is: #{encrypt(word)}"
else
  puts "Your decrypted word is: #{decrypt(word)}"
end