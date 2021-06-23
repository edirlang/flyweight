require_relative 'tree_type'

class TreeFactory
  @tree_types = []

  def initialize
    @tree_types = []
  end

  def self.get_tree_type(name, color, texture)
    type = @tree_types.find do |tree|
      tree.name == name and tree.color == color and tree.texture == texture
    end

    if type.nil?
      type = TreeType.new(name, color, texture)
      @tree_types << type
    end
    type
  end
end