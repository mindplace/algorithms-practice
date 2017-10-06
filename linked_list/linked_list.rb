class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
  end

  def attach_next(node)
    # node should already be a Node object,
    # initializing a next should not be the responsibility of the current node object.
    @next = node
  end
end

class LinkedList
  attr_accessor :head, :tail

  def initialize(value=nil)
    unless value.nil?
      @head = Node.new(value)
    end
  end

  def length
    return 0 unless head

    counter = 1
    current = head

    while current.next
      current = current.next
      counter += 1
    end

    counter
  end

  def get_tail
    current = head
    current = current.next while current.next

    @tail = current
  end

  def attach_node(value)
    node = Node.new(value)
    if head
      get_tail
      @tail.attach_next(node)
    else
      @head = node
    end
  end

  def delete_node(value)
    current = head
    previous = nil

    until current.value == value
      previous = current
      current = current.next
    end

    next_node = current.next
    previous.attach_next(next_node)
  end
end
