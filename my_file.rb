line_num = 0
# File.open('car.rb').each { |line| puts "#{line_num += 1}: #{line}"}
a = Proc.new { |x| x=x*10; puts x}
b = proc { |x| x=x*10; puts x}
c = lambda { |x| x=x*10; puts x}

a.call(5)
b.call(10)
c.call(7)

def caps(str, &block)
  str.capitalize!
  block.call(str)
end

caps('Abc') {|x| puts x}

def m(str,&block)
  if block_given?
    yield(str)
  else
    puts str
  end
end

m('Hi') {|x| x.chomp!; puts x}

