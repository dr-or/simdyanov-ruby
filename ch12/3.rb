# 3. Создайте полный аналог стандартного итератора метода reduce. Назовите его
# my_reduce.

def my_reduce(array = [], &block)
  if block_given?
    result = array[0]
    array[1..-1].each { |el| result = block.call(result, el) }
    result
  else
    'error: no block given (LocalJumpError)'
  end
end

p my_reduce([*1..5]) { |sum, el| sum + el } # 15
p my_reduce([*1..5]) { |fac, el| fac * el } # 120
p my_reduce # error
