# 2. Создайте метод, который проверяет, является ли текущий год високосным.
# В случае, если год високосный, метод должен возвращать true (истину), иначе
# должна возвращаться false (ложь).

def leap?
  current_year = Time.now.year
  date = Time.mktime(current_year, 02, 29)
  date.day == 29
end

year = if leap?
         'високосный'
       else
         'невисокосный'
       end

puts "Этот год #{year}."
