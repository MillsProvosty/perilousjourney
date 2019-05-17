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
    binding.pry
end
