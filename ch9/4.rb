# 4. Создайте класс пользователя User, объекты которого сохраняют фамилию, имя и
# отчество пользователя. Запросите в консоли при помощи метода gets данные
# для трех пользователей. С использованием полученных сведений создайте мас-
# сив, содержащий три объекта класса User.

# Сделал имя и фамилию, два объекта в массиве.

class User
  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def set_user(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

puts 'Имя первого пользователя'

first_name = gets.chomp

puts 'Фамилия первого пользователя'

surname = gets.chomp

user1 = User.new
user1.set_user(first_name, surname)

puts 'Имя второго пользователя'

first_name = gets.chomp

puts 'Фамилия второго пользователя'

surname = gets.chomp

user2 = User.new
user2.set_user(first_name, surname)

p [user1, user2]
