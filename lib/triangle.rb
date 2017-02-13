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
end
