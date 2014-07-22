require_relative '../lib/vector'

class VectorTest < MiniTest::Unit::TestCase

=begin
  def test_add_integer_to_vector
    @vector = Vector[1,1]
    @vector + 1
    assert_equal @vector, [2, 2]
  end
=end

  def test_append_integer_to_vector
    assert MyVector[1,1,2], MyVector[1,1] << 2
  end

  def test_calculate_angle_between_vectors
    @vector = MyVector[5,0]
    @vector2 = MyVector[0,5]
    assert true, @vector.get_angle(@vector2)
    #^no idea^
  end

end
