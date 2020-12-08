require 'csv'

expenses = CSV.read('2020/day_1/expense_report.csv').flatten.map(&:to_i)
expected = 2020

part_1_number = 2
part_2_number = 3

part_1 = expenses.combination(part_1_number).find do |number|
  number.sum == expected
end

part_2 = expenses.combination(part_2_number).find do |number|
  number.sum == expected
end

puts part_1.reduce(:*)
puts part_2.reduce(:*)
