require 'open-uri'
require 'json'

def random_cat_fact
  data = open("https://cat-fact.herokuapp.com/facts/random").read
  json = JSON.parse(data)

  return json["text"]
end


puts "how many cat facts do you want to hear?"
so_many = gets.chomp.to_i
puts "Here you are."

so_many.times do
  puts
  puts random_cat_fact
  sleep(1)
end
