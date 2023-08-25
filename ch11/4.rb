# 4. Дан массив %w[cat dog tiger]. Необходимо изменить его так, чтобы все элемен-
# ты были написаны с заглавной буквы.

animals = %w[cat dog tiger]

capitalized = animals.map { |animal| animal[0].upcase + animal[1..-1] }

p capitalized
