class Map

  def initialize
    @map = []
  end

  def assign(key,value)
    index = @map.index {|pair| pair[0] == key}
    index ? @map[index][1] = value : @map.push([key, value])
    [key, value]
  end

  def lookup(key)
    @map.each {|pair| return pair[1] if pair[0] == key}
    nil
  end

  def remove(key)
    find_index = @map.index {|pair| pair[0] == key}
    find_index ? (@map[0...find_index] + @map[find_index + 1..-1]) : nil
  end

  def show
    deep_dup(@map)
  end

private
  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
  end

end
