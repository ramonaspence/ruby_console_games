$card_deck = [ 
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10,
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10,
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10,
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10,
]

def delay_puts msg
    sleep(1)
    puts msg
end

delay_puts('Welcome to the Blackjack table..')

class Player 
    attr_accessor :hand, :score
    def initialize name
        @name = name
    end
    
    def name
        @name
    end
    
end

player1 = Player.new('human')

player1.hand = Array.new()
2.times do
    player1.hand<<$card_deck[rand(0..$card_deck.length - 1)]
end

npc = Player.new('The House')
npc.hand = Array.new()
2.times do
    npc.hand<<$card_deck[rand(0..$card_deck.length - 1)]
end

delay_puts(player1.name)
p player1.hand

delay_puts(npc.name)
p npc.hand


card = 'y'
until card == 'n'
delay_puts("Draw a card? (y/n)")
card = gets.chomp
if card == 'y'
    player1.hand<<$card_deck[rand(0..$card_deck.length)]
    p player1.hand[-1]
    
    delay_puts(player1.name + ':')
    p player1.hand
end
end


until npc.hand.reduce(:+) >= 17
    npc.hand<<$card_deck[rand(0..$card_deck.length - 1)]
end

delay_puts(npc.name + ':')
p npc.hand


delay_puts(player1.name + ' total:')
player1.score = player1.hand.reduce(:+)
p player1.score

delay_puts(npc.name + ' total:')
npc.score = npc.hand.reduce(:+)
p npc.score

if player1.score === 21
    puts player1.name + ' wins'
elsif npc.score === 21
    puts npc.name + ' wins'
elsif player1.score > 21 && npc.score < 21
    puts player1.name + ': Bust'
    puts npc.name + ' wins'
elsif player1.score < 21 && npc.score > 21
    puts npc.name + ': Bust'
    puts player1.name + ' wins'
elsif player1.score < 21 && player1.score > npc.score
    puts player1.name + ' wins'
elsif npc.score < 21 && npc.score > player1.score
    puts npc.name + ' wins'
end
