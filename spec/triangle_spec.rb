require('rspec')
require('triangle')

describe(Triangle) do
  describe('#triangle?') do
    it("returns false if it is not a triangle") do
      test_triangle = Triangle.new(6,6,5)
      expect(test_triangle.triangle?()).to(eq(true))
    end
    it("returns true if it is a triangle") do
      test_triangle = Triangle.new(0,6,5)
      expect(test_triangle.triangle?()).to(eq(false))
    end
  end
end
