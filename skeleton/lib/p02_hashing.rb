class Fixnum
  # Fixnum#hash already implemented for you
  # self.hash
end

class Array
  def hash
    answer = ""
    self.each do |el|
      answer += el.to_s(5)
    end
    answer.to_i
  end
end

class String
  def hash
    alph = ('a'..'z').to_a
    answer = ""
    self.each_char do |char|
      answer += alph.index(char).to_s
    end
    answer.to_i  
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    
    # p "I am a... #{self}"
    # 0
    answer = []
    self.each do |k,v|
      #key do something
      answer << k
      answer << v
      #val do something    
    end
    answer
    
  end
end
