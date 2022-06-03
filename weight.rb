puts 'Как тебя зовут?'
name = gets.chomp
puts 'Какой твой рост?'
height = gets.chomp.to_i

if (height-110)>0
  puts "#{name}, ваш оптимальный вес - #{height-110}!"
else
  puts "#{name}, ваш вес уже оптимальный!"
end
