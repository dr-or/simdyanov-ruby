# 6. Добавьте в стандартный класс Integer методы minutes, hours, days, которые воз-
# вращают количество секунд, соответствующих заданным значениям. Например,
# вызов 5.minutes должен вернуть 300, вызов 2.hours — 7200, а 1.days — 86400.

class Integer
  # конкретно этот self указан в текущей главе
  def minutes
    self * 60
  end

  def hours
    self * 60.minutes
  end

  def days
    self * 24.hours
  end
end

p 5.minutes
p 2.hours
p 1.days
