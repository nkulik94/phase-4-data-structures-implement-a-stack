require 'pry'

class Stack
    attr_accessor :stack
    attr_accessor :limit
    
    def initialize limit = nil
        @stack = []
        @limit = limit
    end

    def push value
        if !limit || stack.length < limit
            stack.push value
        else
            raise StandardError.new "Stack Overflow"
        end
    end

    def pop
        stack.pop
    end

    def peek
        stack.last
    end

    def size
        stack.count
    end

    def empty?
        stack.empty?
    end

    def full?
        stack.size == limit
    end

    def search value
        i = 0
        i += 1 until stack[i] == value || !stack[i]
        i += 1
        stack.size - i
    end
end

# binding.pry
# 0