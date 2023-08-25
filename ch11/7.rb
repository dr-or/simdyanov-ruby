# 7. Создайте массив с названиями месяцев на русском языке. Извлеките месяцы
# с самым коротким и с самым длинным названием.

months = %w[Январь Февраль Март Апрель Май Июнь
            Июль Август Сентябрь Октябрь Ноябрь Декабрь]

extremes = months.each_with_object([]) do |month, arr|
             arr[0] = month if arr[0].nil? || month.size < arr[0].size
             arr[1] = month if arr[1].nil? || month.size > arr[1].size
           end

p extremes
