### IMPLEMENT STACK WITH LINKED LIST
# push, pop, empty?


class StackViaLinkedList
  class UnderflowError < StandardError; end

  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end

  def push(value)
    @list.attach_node(value)
  end

  def pop
  end

  def empty?
  end

  def peek
  end

  def size
  end
end
