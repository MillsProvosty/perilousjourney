class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(arg)
    node = Node.new(arg)
    @head = node
  end

  def count
    if @head.next_node == nil
      1
    end
  end

  def to_string
    "The #{@head.surname} Family"
  end
end
