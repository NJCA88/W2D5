class Node
  attr_accessor :key, :val, :next, :prev

  def initialize(key = nil, val = nil)
    @key = key
    @val = val
    @next = nil
    @prev = nil
  end

  def to_s
    "#{@key}: #{@val}"
  end

  def remove
    # optional but useful, connects previous link to next link
    # and removes self from list.
  end
end

class LinkedList
  attr_accessor :head, :tail
  
  def initialize
    @head = Node.new(nil, nil)
    @tail = Node.new(nil, nil)
    @head.next = @tail
    @tail.prev = @head
  end

  def [](i)
    each_with_index { |link, j| return link if i == j }
    nil
  end

  def first
    @head.next
  end

  def last
    @tail.prev
  end

  def empty?
    return @head.next == @tail
    false
  end

  def get(key)
  end

  def include?(key)
  end

  def append(key, val)
    temp_node = Node.new(key, val)
    @tail.prev.next = temp_node
    temp_node.prev = @tail.prev
    @tail.prev = temp_node
    temp_node.next = @tail
  end

  def update(key, val)
    target_key = key
    current_key = @head.key
    
    while current_key
    
    until 
  end

  def remove(key)
  end

  def each
  end

  # uncomment when you have `each` working and `Enumerable` included
  # def to_s
  #   inject([]) { |acc, link| acc << "[#{link.key}, #{link.val}]" }.join(", ")
  # end
end
