class Wrapper
  def wrap(word, column)
    return word.chars.each_slice(column).map(&:join)
                    #or
      #return word.scan(/.{1,#{column}}/)
    end
end

wrapper = Wrapper.new
puts wrapper.wrap('Thanks for your time today. I look forward to hearing back from you.', 4)

