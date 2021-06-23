class Tree
  attr_accessor :x, :y, :tree_type

  def initialize(x, y, type)
    @x = x
    @y = y
    @type = type
  end

  def draw(canvas)
    puts @type.draw(canvas, @x, @y)
  end
end