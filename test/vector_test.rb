require_relative '../lib/vector'

RSpec.describe Vector do
  context ".calculate" do
    it "should find the distance between two points" do
      v1 = Vector.new(1,1)
      v2 = Vector.new(2,2)
      expected = calculate(v1, v2)
      actual = 1
    end
  end
end
