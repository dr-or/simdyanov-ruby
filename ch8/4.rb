# 4. Создайте программу check.rb, которая принимает единственный аргумент. Опре-
# делите, что пользователь ввел в качестве аргумента: строку, целое или вещест-
# венное число?

arg = ARGV[0]

arg_class =
  if arg == arg.to_f.to_s
    'Вещественное число'
  elsif arg == arg.to_i.to_s
    'Целое число'
  else
    'Строка'
  end

puts arg_class
