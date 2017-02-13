class Triangle
  define_method(:initialize) do |length, width, height|
    @length
    @width
    @height
  end
  define_method(:triangle?) do
    if @length=0 || @width=0 || @height=0
      false
    else
      true
    end
  end
end
