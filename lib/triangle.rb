class Triangle
  define_method(:initialize) do |length, width, height|
    @length = length
    @width = width
    @height = height
  end
  define_method(:length) do
      @length
  end

  define_method(:width) do
      @width
  end
  define_method(:height) do
      @height
  end
  define_method(:triangle) do
    if (@length+@width)<=@height || (@length+@height)<=@width || (@height+@width)<=@length
      false
    elsif @length.eql?(@width)&& @width.eql?(@height)
      disp = "the triangle is an equilateral triangle"
    elsif @length!=(@width) && @length!=(@height) && @width!=(@height)
      disp = "the triangle is a scalene triangle"
    elsif @length.eql?(@width) && @length!=(@height) || @length.eql?(@height) && @length!=(@width) || @height.eql?(@width) && @height!=(@length)
      disp = "the triangle is an isosceles triangle"
    else
      disp = "enter a triangle"
    end
  end
end
#   define_method(:equilateral?) do
#     if @length.eql?(@width)&& @width.eql?(@height)
#       true
#     else
#       false
#     end
#   end
#   define_method(:scalene?) do
#     if @length!=(@width) && @length!=(@height) && @width!=(@height)
#       true
#     else
#       false
#     end
#   end
#   define_method(:isosceles?) do
#     if @length.eql?(@width) && @length!=(@height) || @length.eql?(@height) && @length!=(@width) || @height.eql?(@width) && @height!=(@length)
#       true
#     else
#       false
#     end
#   end
# end
