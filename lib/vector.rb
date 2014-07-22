require 'matrix'

class MyVector < Vector
  def initialize(x, y)
    self.x = x
    self.y = y
  end

  def calculate(point, *others)
    distance = Math.sqrt(((self[0] - point[0])**2) + ((self[1] - point[1])**2))
    if others != nil
      i = 1
      others.each do |vector|
        distance += Math.sqrt(((point[i] - vector[i+1])**2) + ((point[i] - vector[i+1])**2))
        i += 1
      end
    end
    distance
  end

  def <<(other_item)
    MyVector.elements(self.to_a << other_item)
  end

  def self.get_angle(other)
    cos_theta = (self[0]*other[0]) + (self[1]*other[1]) / ((other[0]**2+other[1]**2).sqrt) * ((self[0]**2+self[1]**2).sqrt)
    arc_cos = Math.acos(cos_theta)
  end

  def get_angle(point1, point2)
    cos_theta = (point1[0]*point2[0]) + (point1[1]*point2[1]) / ((point2[0]**2+point2[1]**2).sqrt) * ((point1[0]**2+point1[1]**2).sqrt)
    arc_cos = Math.acos(cos_theta)
  end

end
