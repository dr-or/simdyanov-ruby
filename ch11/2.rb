# 2. Используя массив, полученный в предыдущем задании, выведите цвета в алфа-
# витном порядке. Кроме того, уберите из списка повторяющиеся цвета и пустые
# строки.

require_relative '1'

def unique(colors)
  colors.each_with_object([]) do |color, arr|
    arr << color unless color == '' || color == arr[-1]
  end
end

# массив для проверки без ручного ввода
# COLORS = ["голубой", "", "желтый", "", "оранжевый", "желтый", "", "красный", "фиолетовый", "красный", "синий", "зеленый"]

COLORS.map.with_index do |color, index|
  counter ||= 0

  if COLORS[counter] > color
    COLORS[counter], COLORS[index] = COLORS[index], COLORS[counter]
  end

  redo if (counter += 1) && counter < index
end

puts 'Ваши уникальные цвета в алфавитном порядке:'

unique(COLORS).each { |color| print color + ' ' }
puts
