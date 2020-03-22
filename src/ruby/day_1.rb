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

puts 'Hello, World'

print_my_name

hello = 'Hello, Ruby'
puts hello.index('Ruby')

increment_sentence