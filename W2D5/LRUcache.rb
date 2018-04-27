class LRUCache

  def initialize(capacity)
    @capacity = capacity
    @cache = []
  end

  def count
    cache.length
  end

  def add(el)
    if cache.include?(el)
      cache.delete(el)
      cache << el
    else
      if count == capacity
        cache.shift
        cache.push(el)
      else
        cache << el
      end
    end
  end

  def show
    cache
  end

  private
  attr_reader :capacity, :cache

end
