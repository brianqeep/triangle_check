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
  describe('#equilateral?') do
    it("returns true if all sides are equal") do
      test_triangle = Triangle.new(5,5,5)
      expect(test_triangle.equilateral?()).to(eq(true))
    end
    it("returns false if all sides are not equal") do
      test_triangle = Triangle.new(5,5,6)
      expect(test_triangle.equilateral?()).to(eq(false))
    end
  end
  describe('#scalene?') do
    it("returns true if all sides are not equal") do
      test_triangle = Triangle.new(4,5,3)
      expect(test_triangle.scalene?()).to(eq(true))
    end
    it("returns false if any of the sides are equal") do
      test_triangle = Triangle.new(5,6,6)
      expect(test_triangle.scalene?()).to(eq(false))
    end
  end
  describe('#isosceles?') do
    it("returns true two sides are equal") do
      test_triangle = Triangle.new(5,5,8)
      expect(test_triangle.isosceles?()).to(eq(true))
    end
    it("returns false if none or all sides are equal") do
      test_triangle = Triangle.new(5,6,7)
      expect(test_triangle.isosceles?()).to(eq(false))
    end
  end
end
