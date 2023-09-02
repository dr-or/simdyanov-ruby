# 1. Создайте класс здания Building. Какие методы в нем следует предусмотреть?
# Постройте объект этого класса и выведите его состояние.

class Building
  def floor_number(number)
    @floor_number = number
  end

  # кирпичный, деревянный, блочный
  def build_out_of(material)
    @material = material
  end

  def age(year)
    @age = Time.now.year - year
  end
end

house = Building.new
house.floor_number(2)
house.build_out_of('wood')
house.age(1990)
p house
