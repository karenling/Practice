# Retrieve the max value in a stack (LIFO)
# Time complexity: O(1)

class MaxStack
  def initialize
    @store = []
  end

  def push(val)
    if @store.empty?
      @store << [val, val]
    else
      max_val = [val, self.max].max
      @store << [val, max_val]
    end
  end

  def pop
    @store.pop
  end

  def max
    @store[-1][1]
  end
end

stack = MaxStack.new
stack.push(3)
stack.push(5)
stack.push(7)
p stack.max #=> 7
stack.pop
p stack.max #=> 5
