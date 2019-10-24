def who_won(user_choice, computer_choice, win_conditions)

  if user_choice == computer_choice
    return 0
  end

code = "#{user_choice}#{computer_choice}" #01
win_condition = win_conditions.include?(code)

  if win_condition
    return 1
  end
  return 2
end


#-----

puts "Вы выбираете"

variants = %w[камень вода воздух бумагу губку ножницы бумагу огонь]
win_conditions = %w[07 06 05 10 17 16 15 21 20 26 30 31 32 41 42 43 52 52 54 63 64 65]

variants.each_with_index do |variant, index|
puts "#{index} - #{variant}"
end

user_choice = gets.to_i
computer_choice = rand(variants.size)

user_text = variants[user_choice]
puts "Вы выбрали #{user_text}"

computer_text = variants[computer_choice]
puts "Компьютер выбрал #{computer_text}"

case who_won(user_choice, computer_choice, win_conditions)
when 0 then puts "Ничья"
when 1 then puts "Вы победили"
when 2 then puts "Победил компьютер"
end




