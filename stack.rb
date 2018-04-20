class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack.push(el)
    el
  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup
  end
end
