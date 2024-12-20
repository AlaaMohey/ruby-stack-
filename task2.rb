class Stack
    def initialize
      @stack = []
      @max_stack = []
    end
  
    def push(num)
      @stack.push(num)
      @max_stack.push([num, @max_stack.last&.first || num].max)
    end
  
    def pop
      if @stack.empty
        puts "stack is empty!"
      @max_stack.pop
      @stack.pop
    end

    def max
      @max_stack.last&.first
    end
  end

  class Extras < Stack
    def initialize
      super
      @sum = 0 
    end
    def push(number)
      super(number)
      @sum += number
    end
    def pop
      popped = super
      @sum -= popped if popped
      popped
    end
    def mean
      return nil if @stack.empty?
  
      @sum.to_f / @stack.size
    end
  end




  #why this solution is faster

       #the using of max_stack makes the oeration (o(1)) 
       #The Extras class maintains a running sum 
           #which is updated during each push and pop operation.
