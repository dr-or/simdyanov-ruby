# 7. Создайте класс, объекты которого моделируют переход вещества в твердое
# (solid), жидкое (liquid) и газообразное состояние (gaz). Метод status должен
# возвращать состояние объекта. Кроме того, объекты класса должны поддержи-
# вать методы, которые переводят объект из одного состояния в другое:
# • melt — из твердого в жидкое;
# • freeze — из жидкого в твердое;
# • boil — из жидкого в газообразное;
# • condense — из газообразного в жидкое;
# • sublime — из твердого в газообразное;
# • deposit — из газообразного в твердое.

class Substance
  def initial(state)
    @status = state
  end

  def status
    @status
  end

  def melt
    @status == :solid ? @status = :liquid : 'Вещество должно быть твердым.'
  end

  def freeze
    @status == :liquid ? @status = :solid : 'Вещество должно быть жидким.'
  end

  def boil
    @status == :liquid ? @status = :gaz : 'Вещество должно быть жидким.'
  end

  def condense
    @status == :gaz ? @status = :liquid : 'Вещество должно быть газообразным.'
  end

  def sublime
    @status == :solid ? @status = :gaz : 'Вещество должно быть твердым.'
  end

  def deposit
    @status == :gaz ? @status = :solid : 'Вещество должно быть газообразным.'
  end
end

state = %i[solid liquid gaz]

water = Substance.new
water.initial(state[rand(0..2)])
puts "Состояние вещества: #{water.status}"

p water.melt
p water.freeze
p water.boil
p water.condense
p water.sublime
p water.deposit

puts "Состояние вещества: #{water.status}"
