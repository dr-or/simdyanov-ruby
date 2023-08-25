# 8. Создайте класс пользователей User, который позволяет сохранять в объекте
# фамилию, имя, отчество пользователя, а также его оценку по предмету (в диапа-
# зоне от 1 до 5). Создайте программу, которая формирует массив 10 объектов
# класса User. Вычислите среднюю оценку и выведите список пользователей, чья
# оценка выше среднего.

# Пользователь без отчества
class User
  def set_user(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @grade = rand(1..5)
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def grade
    @grade
  end
end

COUNT = 10

names = %w[Ivan Vlad John Iosif Jesus Fred Ilia Ian Oleg Tim]
surnames = %w[Popov Knyazev Low Brod Christ Li Zern Gallagher Tinkof Berners]

user_arr = []

COUNT.times do |i|
  user_arr << User.new
  user_arr[i].set_user(names[i], surnames[i])
end

puts 'Все пользователи:'
user_arr.each do |user|
  puts "#{user.first_name} #{user.last_name} - #{user.grade}"
end

grade_sum = user_arr.map(&:grade).reduce(:+)

avg = grade_sum / COUNT
puts "Средняя оценка: #{avg}"

puts 'Пользователи с оценкой выше средней:'

user_arr.select { |user| user.grade > avg }
        .each { |user| puts user.first_name + ' ' + user.last_name }
