# begin
#   puts 'Before exception'
#   1/0
#   puts 'After exception'
# rescue StandardError => e
#   puts "Exception #{e.message}"
#   puts 'You can do that'
#   raise e
# rescue
#   puts 'You can do that to'
# end
#
# def method_with_error
#
#   raise ArgumentError, "Oh_no"
#
# end
# begin
#   method_with_error
# rescue RuntimeError => e
#   puts e.inspect
# end
#
# def sqrt(value)
#   sqrt = Math.sqrt(value)
#   puts sqrt
# rescue StandardError
#   puts "Unvalible"
# end
#
# sqrt(9)
def connect
  raise "Connection error"
end

attempt = 0
begin
  connect
rescue RuntimeError
  attempt+=1
  retry if attempt<3
  puts "check connection"
ensure
  puts "Number #{attempt}"
end


