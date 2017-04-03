
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
attr_reader :ans_word, :guess_word

	def initialize(ans_word)
		@ans_word = ans_word
		@guess_word = []
		@num_guesses = 0
		@guess = []
		p @ans_word
	end
	#this method will calculate number of letters in word and display spaces
	def word_status
		@ans_word.length.times do
			@guess_word << "_"
		end
		puts "Guesser, your secret word has #{@ans_word.length} characters: #{@guess_word*""}"
	end
#this method will take in a guessed letter and place it into the guessed word character array
	def guess_letter(letter)
		if @ans_word.include?(letter)
			i = @ans_word.index(letter)
			@guess_word.insert(i, letter)
			@guess_word.pop
			puts "You are getting closer: #{@guess_word*""}"
		else
			puts "sorry, guess again"
		end
	end
	#this method will compare the guessed word to the answer word

	
end
puts "Wordsmith, enter your secret word for the Guesser:"
game1 = Game.new(gets.chomp)
game1.word_status
puts "Can you guess a letter in the word?"
game1.guess_letter(gets.chomp)



 	# @ans_word.split(" ")
 	# @guess_word.split(" ")