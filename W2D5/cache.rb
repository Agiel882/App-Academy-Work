class LRUCache
    def initialize(size)
        @size = size
        @arr = []
    end

    def count
      arr.count
    end

    def add(el)
      if arr.include?(el)
        arr.delete(el)
        arr.push(el)
      else
        arr.shift if arr.count >= size
        arr.push(el)
      end
      el
    end

    def show
        arr.join(", ")
    end

    private
    attr_reader :size
    attr_accessor :arr

  end