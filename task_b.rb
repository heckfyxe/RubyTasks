products = Hash.new
loop do
  name, price, count = gets.chomp.split
  break if name == 'стоп'

  products[name] = {
    'Цена' => Float(price),
    'Количество' => Float(count)
  }
end

total = 0
products.each do |name, params|
  puts name
  params.each do |param, value|
    print "\t"
    puts "#{param}: #{value}"
  end
  print "\t"
  cost = params['Цена'] * params['Количество']
  total += cost
  puts "Стоимость: #{cost}"
end

puts "Общая стоимость: #{total}"
