class Node
    attr_accessor :value, :left, :right
  
    def initialize(value)
      @value = value
      @left = nil
      @right = nil
    end
  end
  
  class BinaryTree
    attr_accessor :root
  
    def initialize
      @root = nil
    end
  
    def insert(value)
      @root = insert_recursive(@root, value)
    end
  
    private
  
    def insert_recursive(node, value)
      if node.nil?
        return Node.new(value)
      end
  
      if value < node.value
        node.left = insert_recursive(node.left, value)
      elsif value > node.value
        node.right = insert_recursive(node.right, value)
      end
  
      return node
    end
  end

  tree = BinaryTree.new
  tree.insert(5)
  tree.insert(3)
  tree.insert(8)
  tree.insert(2)
  tree.insert(4)
#   puts tree.inspect
  tree.insert(7)
  tree.insert(9)
#   puts tree.inspect

# #<BinaryTree:0x0000563af44b4670 @root=
#     #<Node:0x0000563af44b4580 
#         @value=5, 
#         @left=#<Node:0x0000563af44b44b8 
#             @value=3, 
#             @left=#<Node:0x0000563af44b43f0 
#                 @value=2, 
#                 @left=nil, 
#                 @right=nil
#             >, 
#             @right=#<Node:0x0000563af44b43c8 
#                 @value=4, 
#                 @left=nil, 
#                 @right=nil
#             >
#         >, 
#         @right=#<Node:0x0000563af44b4440 
#             @value=8, 
#             @left=#<Node:0x0000563af44bfe58 
#                 @value=7, 
#                 @left=nil, 
#                 @right=nil
#             >, 
#             @right=#<Node:0x0000563af44bfe30 
#                 @value=9, 
#                 @left=nil, 
#                 @right=nil
#             >
#         >
#     >
# >
