
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
		@guess = []
		p @ans_word
	end
#this method will calculate number of letters in word and display empty spaces
	def word_status
		@ans_word.length.times do
			@guess << "_"
		end
		puts "Guesser, your secret word has #{@ans_word.length} characters: #{@guess*""}"
	end
#this method will define the number of guesses the guesser will have
	def word_length
		@ans_word.length
	end
#this method will take in a guessed letter and place it into the guessed word character array
	def guess_letter(letter)
		if @ans_word.include?(letter)
			i = @ans_word.index(letter)
			@guess.insert(i, letter)
			@guess.pop
			puts "Good! You are getting closer: #{@guess*""}"
		else
			puts "sorry, guess again"
		end
	end
	#this method will compare the guessed word to the answer word
	def guessed_word(word)
		if @ans_word == word
			puts "You are a genious"
		else
			puts "guess again"
			@guess_word.pop
		end
	end

end
# user interface
puts "Wordsmith, enter your secret word for the Guesser:"
game1 = Game.new(gets.chomp)
game1.word_status
puts "You have #{game1.word_length} guesses to resolve the secret word"
	x = game1.word_length
	while x > 0
puts "Would you like to guess a 'letter' or 'word'?"
	if "letter" == gets.chomp
		puts "Enter your letter:"
		game1.guess_letter(gets.chomp)
	else
		puts "Enter your word guess:"
		game1.guessed_word(gets.chomp)
	end
	  x = x-1
	end
	if guessed_word(word) == true
		break
	else
		puts "Sorry, you used up all your guesses, you lost HAAAA!!"
	end




