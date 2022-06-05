# numbers=[1,2,3,4,5]
# puts numbers.class
# numbers[0]=7
# puts numbers.size
# puts numbers.any?
# puts numbers.empty?
# numbers.push(99)
# numbers << 89
# puts numbers.first
# puts numbers.last
# numbers.delete(99)
# numbers.delete_at(7)
# puts numbers.max
# numbers.sort
# puts numbers.include?(89)
# puts numbers

# range = (1..10)
# puts range.to_a
# puts range.class

# hash = {a:1,b:2}
# hash_string = {'january' => 31,'febrary'=>28}
# puts hash_string['january']
# puts hash.length
# puts hash.class
# puts hash[:a]
# hash.keys
# hash.include?(:a)
# cities = {moscow:['ЦАО','SZAO'],spb:['kupchino','kolpino']}
# puts cities[:moscow]

# range = (1..5)
# for index in range
#   puts index
# end
# range.each { |index|
#   puts index
# }
# index=0
# while index<5 do
#   puts index
#   index+=1
# end
#
# until index>5
#   puts index
#   index+=1
# end

# a = [1,2,3,4,5,6]
# a.each do |index|
#   puts index
# end
#
# range = ("A".."Z")
# range.each { |l|puts l }

hash = {a:1,b:2}
hash.each { |key,value|puts "#{key} = #{value}" }


