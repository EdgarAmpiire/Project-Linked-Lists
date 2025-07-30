require_relative 'node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
    new_node = Node.new(value)
    return @head = new_node if @head.nil?

    tail.next_node = new_node
  end

  def prepend(value)
    @head = Node.new(value, @head)
  end

  def size
    count = 0
    current = @head
    while current
      count += 1
      current = current.next_node
    end
    count
  end

  def head
    @head
  end

  def tail
    current = @head
    return nil if current.nil?

    current = current.next_node while current.next_node
    current
  end

  def at(index)
    current = @head
    count = 0
    while current
      return current if count == index
      count =+ 1
      current = current.next_node
    end
    nil
  end

  def pop
    return nil if @head.nil?
    return @head = nil if head.next_node.nil?

    current = @head
    current = current.next_node while current.next_node.next_node
    current.next_node = nil
  end

  def contains?(value)
    current = @head
    while current
      return true if current.value == value
      current = current.next_node
    end
    false
  end

  def find(value)
    current = @head
    index = 0
    while current
      return index if current.value == value
      index += 1
      current = current.next_node
    end
    nil
  end

  def to_s
    current = @head
    result = ""
    while current
      result += "( #{current.value} ) -> "
      current = current.next_node
    end
    result += 'nil'
    result
  end

  def insert_at(value, index)
    return prepend(value) if index == 0
    prev_node = at(index - 1)
    return nil if prev_node.nil?

    new_node = Node.new(value, prev_node.next_node)
    prev_node.next_node = new_node
  end

  def remove_at(index)
    return nil if @head.nil?

    if index == 0
      @head = @head.next_node
      return
    end

    prev_node = at(index - 1)
    return nil if prev_node.nil? || prev_node.next_node.nil?
    
    prev_node.next_node = prev_node.next_node.next_node
  end

end