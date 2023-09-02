# 4. Пусть имеется фабрика, которая выпускает детские игрушки: плюшевый медве-
# жонок (TeddyBear), мяч (Ball), кубики (Cube). Создайте класс Factory, который
# имеет метод Factory.build, возвращающий объект классов TeddyBear, Ball или
# Cube, соответствующий одной из игрушек. В качестве аргумента метод должен
# принимать один из символов: :teddy_bear, :ball, :cube, по которым будет при-
# ниматься решение о том, объект какого класса следует вернуть. В классе Factory
# следует предусмотреть метод total, который возвращает общее количество соз-
# данных игрушек. Кроме того, необходимо реализовать метод offers, возвра-
# щающий хэш, ключами которого выступают символы :teddy_bear, :ball, :cube,
# а значениями — количество созданных игрушек этого типа.

class Factory
  @@count = 0
  @@teddy_bears = []
  @@balls = []
  @@cubes = []

  def Factory.build(toy)
    @@count += 1
    case toy
    when :teddy_bear
      @@teddy_bears << TeddyBear.new
      @@teddy_bears.last
    when :ball
      @@balls << Ball.new
      @@balls.last
    when :cube
      @@cubes << Cube.new
      @@cubes.last
    end
  end

  def total
    @@count
  end

  # array => enumerator.size либо можно сразу array.size (последнего в книге еще не было)
  def offers
    { teddy_bear: @@teddy_bears.each.size, ball: @@balls.size, cube: @@cubes.size }
  end

  class TeddyBear
  end

  class Ball
  end

  class Cube
  end
end

TOY_AMOUNT = 10

toys = %i[teddy_bear ball cube]

TOY_AMOUNT.times do
  Factory.build(toys[rand(0..2)])
end

factory = Factory.new
puts "Общее количество созданных игрушек: #{factory.total}"

puts factory.offers
