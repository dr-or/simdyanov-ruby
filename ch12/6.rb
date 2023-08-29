# 6. Создайте метод week, который принимает в качестве аргумента порядковый но-
# мер недели в году. В блок метода должна передаваться последовательность объ-
# ектов класса Date c датами заданной недели: от понедельника до воскресенья.

require 'date'

def week(num)
  day = Date.commercial(Date.today.year, num, 1)
  7.times do
    yield day
    day = day.succ
  end
end

week_days = %w[вс пн вт ср чт пт сб]

week(10) { |date| puts "#{week_days[date.wday]}: #{date.strftime('%d-%m-%Y')}" }
