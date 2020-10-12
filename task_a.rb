print 'a='
a = Integer(gets.chomp)
print 'b='
b = Integer(gets.chomp)
print 'c='
c = Integer(gets.chomp)

d = b**2 - 4 * a * c
if d.positive?
  x1 = (-b + Math.sqrt(d)) / (2 * a)
  x2 = (-b - Math.sqrt(d)) / (2 * a)
  puts "D=#{d}"
  puts "x1=#{x1}, x2=#{x2}"
elsif d.zero?
  x = -b / (2 * a)
  puts "D=#{d}"
  puts "x=#{x}"
else
  puts 'Корней нет'
end
