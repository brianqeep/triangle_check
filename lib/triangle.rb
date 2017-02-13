class Triangle
  define_method(:initialize) do |length, width, height|
    @length = length
    @width = width
    @height = height
  end
  define_method(:triangle?) do
    if @length!=0 && @width!=0 && @height!=0
      true
    else
      false
    end
  end
  define_method(:equilateral?) do
    if @length.eql?(@width)&& @width.eql?(@height)
      true
    else
      false
    end
  end
  define_method(:scalene?) do
    if @length!=(@width) && @length!=(@height) && @width!=(@height)
      true
    else
      false
    end
  end
  define_method(:isosceles?) do
    if @length.eql?(@width) && @length!=(@height) || @length.eql?(@height) && @length!=(@width) || @height.eql?(@width) && @height!=(@length)  
      true
    else
      false
    end
  end
end
