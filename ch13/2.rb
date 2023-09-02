# 2. Создайте класс шахмат, моделирующий шахматные фигуры. Какие методы
# в нем следует предусмотреть?

class Chess
  # выбор фигуры
  def choose(piece)
    # массив доступных фигур
    pieces = %w[king queen bishop knight rook pawn]
  end

  # ход фигуры на указанную клетку (если позволено туда идти)
  def move(square)
  end

  # взятие чужой фигуры на указанной клетке
  def capture(square)
  end
end
