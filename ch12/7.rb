# 7. Создайте метод weekends, который извлекает выходные дни (субботы и воскре-
# сенья) для текущего года. В блок метода должна передаваться последователь-
# ность объектов класса Date c выходными от начала до конца года.

require 'date'

def weekends
  current_year = Date.today.year
  # первый день года
  date = Date.new(current_year)

  # поиск первой сб или вс
  unless date.sunday?
    date.wday.upto(6) do
      date += 1
    end
  end

  # передача выходного дня в блок и поиск следующего
  loop do
    yield date

    date.sunday? ? date += 6 : date += 1

    break if date.year > current_year
  end
end

week_days = %w[вс пн вт ср чт пт сб]

weekends { |day| puts "#{week_days[day.wday]}: #{day.strftime('%d-%m-%Y')}" }
