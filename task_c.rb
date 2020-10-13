require 'matrix'

matrix = []
line = []
entered = false
loop do
  nums = gets.chomp.split(',').map(&:to_i)
  if nums.size.zero?
    break if entered

    matrix += [line]
    entered = true
    line = []

    next
  end

  entered = false
  line += nums
end

puts Matrix[*matrix].determinant if matrix.size == matrix[0].size
