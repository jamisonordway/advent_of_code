file_path = File.expand_path('/Users/jamisonordway/Desktop/advent_of_code/2020/day_2/passwords.txt', __FILE__)
input = File.read(file_path)

valid = 0

input.lines.each do |line|
  first_position = (line.split('-').first.to_i - 1)
  second_position = (line.split('-')[1].split().first.to_i - 1)
  letter = line.split(':')[0].split.last

  password = line.gsub("\n", '').split(': ')[-1].split('')

  first_position_match = (password.at(first_position) == letter)
  second_position_match = (password.at(second_position) == letter)

  if first_position_match ^ second_position_match
    valid += 1
  end
end

puts valid
