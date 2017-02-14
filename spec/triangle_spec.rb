require('rspec')
require('triangle')

describe(Triangle) do
  describe('#triangle') do
    it("returns false if it is not a triangle") do
      test_triangle = Triangle.new(2,2,8)
      expect(test_triangle.triangle()).to(eq(false))
    end
    it("returns true for equal sides") do
      test_triangle = Triangle.new(8,8,8)
      expect(test_triangle.triangle()).to(eq("the triangle is an equilateral triangle"))
    end
    it("returns true for non equal sides") do
      test_triangle = Triangle.new(8,9,10)
      expect(test_triangle.triangle()).to(eq("the triangle is a scalene triangle"))
    end
    it("returns true two equal sides") do
      test_triangle = Triangle.new(8,8,10)
      expect(test_triangle.triangle()).to(eq("the triangle is an isosceles triangle"))
    end
  end
end






#     it("returns true if it is a triangle") do
#       test_triangle = Triangle.new(0,6,5)
#       expect(test_triangle.triangle?()).to(eq(false))
#     end
#   end
#   describe("#length") do
#       it("returns value of length") do
#         test_triangle = Triangle.new(3, 4, 5)
#         expect(test_triangle.length()).to(eq(3))
#       end
#     end
#     describe("#width") do
#         it("returns value of width") do
#           test_triangle = Triangle.new(3, 4, 5)
#           expect(test_triangle.width()).to(eq(4))
#         end
#       end
#       describe("#height") do
#           it("returns value of height") do
#             test_triangle = Triangle.new(3, 4, 5)
#             expect(test_triangle.height()).to(eq(5))
#           end
#         end
#   describe('#equilateral?') do
#     it("returns true if all sides are equal") do
#       test_triangle = Triangle.new(5,5,5)
#       expect(test_triangle.equilateral?()).to(eq(true))
#     end
#     it("returns false if all sides are not equal") do
#       test_triangle = Triangle.new(5,5,6)
#       expect(test_triangle.equilateral?()).to(eq(false))
#     end
#   end
#   describe('#scalene?') do
#     it("returns true if all sides are not equal") do
#       test_triangle = Triangle.new(4,5,3)
#       expect(test_triangle.scalene?()).to(eq(true))
#     end
#     it("returns false if any of the sides are equal") do
#       test_triangle = Triangle.new(5,6,6)
#       expect(test_triangle.scalene?()).to(eq(false))
#     end
#   end
#   describe('#isosceles?') do
#     it("returns true two sides are equal") do
#       test_triangle = Triangle.new(5,5,8)
#       expect(test_triangle.isosceles?()).to(eq(true))
#     end
#     it("returns false if none or all sides are equal") do
#       test_triangle = Triangle.new(5,6,7)
#       expect(test_triangle.isosceles?()).to(eq(false))
#     end
#   end
# end
