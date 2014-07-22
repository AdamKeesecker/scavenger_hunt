require_relative '../lib/vector'

class VectorTest < MiniTest::Unit::TestCase

  def test_add_integer_to_vector
    @vector = Vector[1,1]
    @vector + 1
    assert_equal @vector, [2, 2]
  end

  def test_append_integer_to_vector
    @vector = Vector[1, 1]
    @vector << 2
    assert @vector, Vector[1, 1, 2]
  end
end
