# 3. Создайте класс дней недели Week. Объекты класса должны отзываться на ме-
# тод each, в блок которого передаются названия дней недели: понедельник, втор-
# ник, среда, четверг, пятница, суббота и воскресенье.

class Week
  def each
    week_days = %w[понедельник вторник среда четверг
                   пятница суббота воскресенье]
    week_days.each { |day| yield day }
  end
end

week = Week.new
week.each { |day| print day + ' ' }
puts
