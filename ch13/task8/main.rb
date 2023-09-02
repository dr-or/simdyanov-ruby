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
# 8. Решите предыдущую задачу при помощи гема state_machine
# (https://github.com/pluginaweek/state_machine).

require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

class Substance
  STATE = %i[solid liquid gaz]

  state_machine :state, initial: STATE[rand(0..2)] do
    after_transition do |substance, transition|
      puts "Вещество стало #{substance.state} после #{transition.event}."
    end

    after_failure do |substance, transition|
      puts "Вещество в состоянии #{substance.state} не может #{transition.event}."
    end

    event :melt do
      transition solid: :liquid
    end

    event :sublime do
      transition solid: :gaz
    end

    # вместо freeze -> frost для избежания конфликта с предопределенным методом freeze
    event :frost do
      transition liquid: :solid
    end

    event :boil do
      transition liquid: :gaz
    end

    event :condense do
      transition gaz: :liquid
    end

    event :deposit do
      transition gaz: :solid
    end
  end
end

water = Substance.new

puts "Первоначальное состояние вещества: #{water.state}"

water.melt
water.frost
water.boil
water.condense
water.sublime
water.deposit
