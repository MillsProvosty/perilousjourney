class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(arg)
    node = Node.new(arg)
    node.next_node = @head
    @head = node
  end

  def count

    num = 1
    fake_head = @head
    if @head == nil
      return 0
    end

    while fake_head.next_node != nil
      num += 1
      fake_head = fake_head.next_node
    end
    return num
  end

  def to_string
    if count = 1
      "The #{@head.surname} Family"
    else
      "The #{@head.next_node} Family" + ", followed by the #{@head.surname} Family."
    end
  end
end
