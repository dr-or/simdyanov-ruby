# 1. Создайте метод sum, который принимает любое количество числовых аргумен-
# тов и возвращает их сумму.

def sum(*args)
  return 0 if args[0].nil?

  args[0] + sum(*args[1..-1])
end

puts sum()            # 0
puts sum(1)           # 1
puts sum(2, 3, 5)     # 10
puts sum(1, 5, 9, 11) # 26
