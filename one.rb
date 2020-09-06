words = [
    'beautiful', 
    'basic', 
    'orchard', 
    'lantern', 
    'television', 
    'imagination', 
    'hibernation'
]

chances = 15



puts 'Hi, this is my first Ruby program!'
sleep(1)
puts 'Why don\'t we play a quick game of Hangman?'
sleep(1)
puts 'The word will be chosen randomly from a list and you get 15 chances to guess.'

index = rand(7)
word = words[index] 
result = '_' * word.length()
result.split('')
puts result
chars = word.split('')
p chars

# puts 'Your first guess..'
# guess1 = gets.chomp()

repeat = 0
index = 0
puts "Your first guess..."
while chances > 0

guess1 = gets.chomp()
    for i in chars
        if i == guess1
            index = chars.index(i)
            repeat += 1
            chances -= 1

            puts "Nice!"
            result[index] = guess1      
            puts result
        else
            puts "Sorry! But noooope. Guess again though!"
            chances -= 1
        end
    end
end
"""
working so far needs to handle guesses that show up more than once
"""


# if repeat == 1
#     puts "Nice! You guessed one!"
#     result[index] = guess1
# else
#     puts "Nice! There are #{repeat}!"
#     result[index] = guess1
# end

result[index] = guess1      
puts result
