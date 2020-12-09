file_path = File.expand_path('/Users/jamisonordway/Desktop/advent_of_code/2020/day_2/passwords.txt', __FILE__)
input = File.read(file_path)

valid = 0

input.lines.each do | line |
  split = line.split(': ')
  min = split[0].split[0].split('-')[0]
  max = split[0].split[0].split('-')[-1]
  letter = split[0].split[-1]
  password = split[-1]

  letter_count = password.scan(/(?=#{letter})/).count
  if letter_count <= max.to_i && letter_count >= min.to_i
    valid +=1
  end
end

puts valid
