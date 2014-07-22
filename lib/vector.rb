class Vector
  def initialize(x, y)
    self.x = x
    self.y = y
  end

  def calculate(point1, point2)
    distance = Math.sqrt(((point2.x - point1.x)**) + ((point2.y - point2.y)**))
  end

end
