require_relative 'node'
require 'pry'

class LinkedList
attr_reader :head, :current
  def initialize
    @head = nil
    @current = 0
  end

  def append(data)
    node = Node.new(data)

    if @head == nil
      @head = node
      @current = @head
    elsif @head != nil
      @current.next_node = node
      @current = @current.next_node
    elsif !@current.next_node.nil?
      @current = node
    end
    node.data
  end

  def count
    @current = @head
    count = 1
    until @current.next_node == nil
      @current = @current.next_node
      count += 1
    end
    count
  end

  def to_string
    @current = @head
    data_array = Array.new
    data_array << @current.data
    until @current.next_node == nil
      @current = @current.next_node
      data_array << @current.data
    end
    data_array.join(" ")
  end

  def prepend(data)
    current = @head
    @head = Node.new(data)
    @head.next_node = current
  end

  def insert(position, data)
    node = Node.new(data)
    counter = 0
    @current = @head
      until counter == position
        counter += 1
        @current = @current.next_node
      end
      node.next_node = @current
    counter = 0
    @current = @head
      until counter == position - 1
      counter += 1
      @current = @current.next_node
      end
    @current.next_node = node
  end

  def find(position, how_many)
    counter = 0
    @current = @head
      until counter == position
        counter += 1
        @current = @current.next_node
      end

      found = String.new
      how_many.times do
        found << @current.data + " "
        @current = @current.next_node
      end
      found.chop
  end

  def includes?(data)
    @current = @head
    until @current == nil
          return true if @current.data == data
      @current = @current.next_node
    end
    false
  end

  def pop
    popped = Array.new
    @current = @head
    until @current.next_node.next_node == nil
      @current = @current.next_node
    end
    popped << @current.next_node.data
    @current.next_node.next_node = nil
    popped.join
  end

end
