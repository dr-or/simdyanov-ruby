# 3. Дан массив %w[cat dog tiger]. Нужно вернуть массив, состоящий только из
# элементов, где встречается символ t.

animals = %w[beaver cat dog tiger raccoon chicken meerkat albatross]

animals_with_t =
  animals.select do |animal|
    letter = false
    animal.size.times do |i|
      break if animal[i] == 't' && (letter = true)
    end
    letter
  end

p animals_with_t
