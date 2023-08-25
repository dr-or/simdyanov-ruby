# 5. Строку 'Hello world!' преобразуйте в массив ["H", "e", "l", "l", "o", " ",
# "w", "o", "r", "l", "d", "!"]. Выражение преобразования должно быть одно-
# строчным.

str = 'Hello world!'
arr = []

str.size.times { |i| arr << str[i] }

p arr
