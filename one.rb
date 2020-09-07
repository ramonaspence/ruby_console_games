words = [
    'beautiful', 
    'basic', 
    'orchard', 
    'lantern', 
    'television', 
    'imagination', 
    'hibernation'
]

puts 'Hi, this is my first Ruby program!'
sleep(1)
puts 'Why don\'t we play a quick game of Hangman?'
sleep(1)
puts 'The word will be chosen randomly from a list and you get 15 chances to guess.'

chances = 15

word = words[rand(words.length())] 
result = '_' * word.length()
result.split('')
puts result

chars = word.split('')

index = []
puts "Your first guess..."

while chances > 0 && result =~ /_/
    guess1 = gets.chomp()
    index = chars.each_index.select { |i| chars[i] == guess1 }
    chances -= 1
    if index != []
        puts 'Got one!'
    elsif index == []
        puts 'Nope! Guess again..'
    end

    for i in index
        result[i] = guess1
    end 
    p result

end

if result =~ /_/ && chances == 0
    puts "you ran out of chances"
elsif chances > 0 && result !=~ /_/
    puts 'you win'
end

