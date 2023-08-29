# 1. Создайте полный аналог стандартного итератора map. Назовите его my_map.

def my_map(array = [])
  if block_given?
    result = []
    array.each { |el| result << yield(el) }
    result
  else
    array.each
  end
end

p my_map([*1..5]) { |x| x**x } # [1, 4, 27, 256, 3125]
p my_map([*1..5]) # enumerator

p my_map([*1..5]) { |x| puts x } # [nil, nil, nil, nil, nil]
