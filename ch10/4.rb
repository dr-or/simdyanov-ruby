# 4. Создайте программу, которая выводит интервал дней текущей недели:
# '07.10.2019-13.10.2019'.

t = Time.now

day = 60 * 60 * 24

until t.monday?
  t -= day
end

sunday = t + day * 6

puts "Текущая неделя: #{t.strftime('%d.%m.%Y')}-#{sunday.strftime('%d.%m.%Y')}"
