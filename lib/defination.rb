class Word
  define_method(:initialize) do |single|
    @single = single
  end

  define_method(:single) do
    @single
  end

  define_singleton_method(:all) do
    []
  end
end
