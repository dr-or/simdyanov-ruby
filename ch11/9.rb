# 9. Создайте хэш, в котором в качестве ключа выступает название планеты Солнеч-
# ной системы, а в качестве значения — масса планеты. Сформируйте две коллек-
# ции с тремя самыми легкими и тремя самыми тяжелыми планетами. Выведите
# их в стандартный поток вывода.

# масса планеты = указанное число * 10**24 кг
solar_system = {
  Меркурий: 0.33,
  Венера: 4.867,
  Земля: 5.972,
  Марс: 0.65,
  Юпитер: 1900,
  Сатурн: 570,
  Уран: 87,
  Нептун: 100
}

# хэш преобразуем в массив (можно сделать проще с to_a)
solar_system =
  solar_system.each_with_object([]) do |planet, arr|
    arr << planet
  end

# массив сортируем по возрастанию массы
solar_system.each_with_index do |planet, index|
  # счетчик для сравнения планет в каждой итерации
  counter ||= 0
  # сравниваем массу
  if solar_system[counter][1] > planet[1]
    solar_system[counter], solar_system[index] = solar_system[index], solar_system[counter]
  end
  redo if (counter += 1) && counter < index
end

# два массива с тремя самыми легкими и тремя самыми тяжелыми планетами
lightweight = solar_system[0..2]
heavyweight = solar_system[-3..-1]

puts 'Самые легкие планеты Солнечной системы:'
lightweight.each { |name, mass| puts "#{name} c массой #{mass} * 10**24 кг" }

puts

puts 'Самые тяжелые планеты Солнечной системы:'
heavyweight.each { |name, mass| puts "#{name} c массой #{mass} * 10**24 кг" }
