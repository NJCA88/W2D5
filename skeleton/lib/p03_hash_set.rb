class HashSet
  attr_reader :count

  attr_reader :count, :num_buckets

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
    resize! if count >= num_buckets
    i = num.hash % num_buckets
    return true if @store[i].include?(num)
    @store[i] << num 
    @count += 1
  end

  def remove(num)
    i = num.hash % num_buckets
    if @store[i].include?(num)
      @store[i].delete(num)
      @count -= 1
    end
  end

  def include?(num)
    i = num.hash % num_buckets
    return true if @store[i].include?(num)
    return false
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    # debugger
    @store.length
  end

  def resize!
    # debugger
    temparr = Array.new(num_buckets * 2) {Array.new}
    @store.each do |arr|
      arr.each do |num|
        # debugger
        i =  num.hash % (num_buckets * 2)
        temparr[i] << num 
      end
    end
    @store = temparr
  end
end
 