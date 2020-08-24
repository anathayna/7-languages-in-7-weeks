# print "hello world"
puts "Hello world"

puts "\n"

# find the index of the word Ruby in "Hello Ruby"
puts "Hello Ruby".index "Ruby"

puts "\n"

# print your name ten times
puts("Ana " * 10)

puts "\n"

# print "this is the sentence x" where x changes from 1 to 10
(1..10).each { |x| puts "this is the sentence #{x}" }

puts "\n"

# day 1

secret = rand(100)
guess = -1

while guess != secret do
  puts "Enter number: "
  guess = gets.to_i
  puts "Too low" if guess < secret
  puts "Too high" if guess > secret
end

puts "You found the secret number!"