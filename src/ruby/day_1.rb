#!/usr/bin/env ruby
def print_my_name
    x = 0
    myName = 'Chris'
    while x < 10
        puts "#{x + 1}). #{myName}"
        x += 1
    end
end

def increment_sentence
    i = 1
    while i <= 10
        puts "This is sentence number #{i}"
        i += 1
    end
end

def number_guesser
    numberToGuess = rand(11)
    puts numberToGuess
    puts 'Guess a number from 0-10:'
    guess = gets.to_i
    puts "You guessed #{guess}"
    puts 'That\'s right!' if guess == numberToGuess
    puts 'Too low' if guess < numberToGuess
    puts 'Too high' if guess > numberToGuess    
end

puts 'Hello, World'

print_my_name

hello = 'Hello, Ruby'
puts hello.index('Ruby')

increment_sentence

number_guesser