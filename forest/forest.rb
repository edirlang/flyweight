require_relative 'tree_factory'
require_relative 'tree'
class Forest
  attr_accessor :trees

  def initialize
    @trees = []
  end

  def plant_tree(x, y, name, color, texture)
    type = TreeFactory.get_tree_type(name, color, texture)
    tree = Tree.new(x, y, type)
    trees << tree
  end

  def draw(canvas)
    @trees.each do |tree|
      tree.draw(canvas)
    end
  end
end

# use
f = Forest.new

colors = ['red','blue','green', 'dark']

20.times do
  f.plant_tree(rand(1..20), rand(1..20), colors[rand(0..3)], colors[rand(0..3)], "lineas")
end

f.draw("Game")