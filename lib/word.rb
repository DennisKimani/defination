class Word
  @@words = []

  define_method(:initialize) do |single|
    @single = single
    @id = @@words.length.+(1)
  end

  define_method(:single) do
    @single
  end

  define_singleton_method(:all) do
    @@words
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_singleton_method(:find) do |identification|
    found_word = nil
    @@words.each do |word|
      found_word = word if word.id.eql?(identification.to_i)
    end
    found_word
  end
end
