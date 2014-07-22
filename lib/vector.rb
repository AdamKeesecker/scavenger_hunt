require 'matrix'

class MyVector < Vector
  def initialize(x, y)
    self.x = x
    self.y = y
  end

  def calculate(point, *others = nil)
    distance = Math.sqrt(((self[0] - point[0])**2) + ((self[1] - point[1])**2))
    if others != nil
      others.each do |vector|
        i = 1
        distance += Math.sqrt(((point[i] - vector[i+1])**2) + ((point[i] - vector[i+1])**2))
        i += 1
      end
    end
    distance
  end
end
