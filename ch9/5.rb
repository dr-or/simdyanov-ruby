# 5. Создайте метод cel2far для перевода градусов Цельсия в градусы по Фаренгей-
# ту, а также обратный метод fal2cel — для перевода градусов по Фаренгейту
# в градусы Цельсия.

def cel2far(degrees)
  degrees * 1.8 + 32
end

def fal2cel(degrees)
  (degrees - 32) / 1.8
end

puts cel2far(15)

puts fal2cel(59)
