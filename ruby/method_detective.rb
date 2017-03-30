# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.


a = "iNvEsTiGaTiOn".swapcase
p a
# => “InVeStIgAtIoN”

b = "zom".insert(1, 'o')
p b
# => “zoom”

c = "enhance".center(15)
p c
# => "    enhance    "

d = "Stop! You’re under arrest!".upcase
p d
# => "STOP! YOU’RE UNDER ARREST!"

f = "the usual".insert(-1, " suspects")
p f
#=> "the usual suspects"

g = " suspects".insert(0, "the usual")
p g
# => "the usual suspects"

h = "The case of the disappearing last letter".chop
p h
# => "The case of the disappearing last lette"

i = "The mystery of the missing first letter".delete "T"
p i
# => "he mystery of the missing first letter"

j = "Elementary,    my   dear        Watson!".squeeze(" ")
p j
# => "Elementary, my dear Watson!"

k = "z".ord
p k
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

i = "How many times does the letter 'a' appear in this string?".count('a')
p i
# => 4
