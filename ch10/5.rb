# 5. В UNIX-подобных операционных системах имеется утилита ncal, которая выво-
# дит календарь на текущий месяц:
# $ ncal
# Февраль 2019
# пн    4 11 18 25
# вт    5 12 19 26
# ср    6 13 20 27
# чт    7 14 21 28
# пт 1  8 15 22
# сб 2  9 16 23
# вс 3 10 17 24
# Создайте на Ruby программу, которая выводит аналогичный календарь для
# текущего месяца.

now = Time.now
# указанный при запуске программы или текущий месяц
month = (ARGV[0] || now.month).to_i
# указанный при запуске программы или текущий год
year = (ARGV[1] || now.year).to_i
# начало текущего месяца
start_date = Time.new(year, month)
# первый день недели в месяце
first_wday = start_date.wday

next_month = month == 12 ? 1 : month + 1

one_day = 60 * 60 * 24

month_dates = []

# все дни месяца в массив
until start_date.month == next_month
  month_dates << start_date
  start_date += one_day
end

months = %w[Январь Февраль Март Апрель Май Июнь
            Июль Август Сентябрь Октябрь Ноябрь Декабрь]

puts "    #{months[month - 1]} #{year}"

# начинаем с вс, потому что в методе wday: sunday == 0
week = %w[вс пн вт ср чт пт сб]

# перебор дней недели c пн
for wd in [*1..6, 0]
  print week[wd]

  # пробел в начале месяца, если первое число месяца идет не с начала недели
  if wd < first_wday && wd != 0 || first_wday == 0 && first_wday != wd
    print '   '
  end

  # перебор дней месяца
  for date in month_dates
    print format('% 3d', date.day) if date.wday == wd
  end

  # переходим к следующей строке с другим днем недели
  puts
end
