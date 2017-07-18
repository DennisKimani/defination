class Word
  @@words = []

  define_method(:initialize) do |single|
    @single = single
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
end
