
class TreeType
  attr_reader :name, :color, :texture

  def initialize(name, color, texture)
    @name = name
    @color = color
    @texture = texture
  end

  def draw(canvas, x, y)
    puts "Draw Tree #{texture}, #{color}, #{name} in canvas #{canvas} postion #{x}, #{y}"
  end
end