# 2. Создайте полный аналог стандартного итератора метода select. Назовите его
# my_select.

def my_select(array = [])
  if block_given?
    result = []
    array.each { |el| result << el if yield(el) }
    result
  else
    array.each
  end
end

p my_select([*1..5]) { |x| x.even? } # [2, 4]
p my_select([*1..5]) { |x| 10 % x == 0 } # [1, 2, 5]
p my_select([*1..5]) # enumerator
