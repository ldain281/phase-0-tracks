
# Two users: Wordsmith and Player
# Wordsmith enters word on initialization
# Word is stored in instance variable @ans_word
# Word is split so Player can guess letters also

# guesses count <= word length
# Guesses are limited, so @guess_word.length.times

# Number of guesses = unique_guesses + 1
# Repeated guesses do not count against the user. This means guesses will have to be stored and matched.

# Return feedback
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of “c”. Word needs to be split for matching and joined

# If win = congratulations, else lose = you lose
# The user should get a congratulatory message if they win, and a taunting message if they lose.
class Game
	def intitialize
		@ans_word = nil
		@guess_word = nil
		@num_guesses = 0
		@guess = []
	end

	def start(ans_word)
		@ans_word = ans_word
	end


 	# @ans_word.split(" ")
 	# @guess_word.split(" ")