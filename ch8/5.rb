# 5. Создайте программу posneg.rb, которая принимает в качестве аргумента число и
# сообщает, является оно положительным или отрицательным. В случае, если пер-
# вый аргумент программы числом не является, программа должна вывести сооб-
# щение «Это не число».

arg = ARGV[0]

num_check = arg == arg.to_f.to_s || arg == arg.to_i.to_s
real_num = arg.to_f

result =
  if num_check && real_num.positive?
    'Это число положительное.'
  elsif num_check && real_num.negative?
    'Это число отрицательное.'
  elsif arg == '0'
    'Это ноль.'
  else
    'Это не число.'
  end

puts result
