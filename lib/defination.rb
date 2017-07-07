class Word
  @@all_words = []

  define_method(:initialize) do |single|
    @@single = single
  end

  define_method(:single) do
    @@single
  end

  define_singleton_method(:all) do
    @@all_words
  end

  define_method(:save) do
    @@all_words.push(self)
  end
end
