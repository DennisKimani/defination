class Word
    @@words = []

    attr_reader(:name, :id, :define)

    define_method(:initialize) do |name|
      @name = name
      @id = @@words.length().+(1)
      @defines = []
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

    define_singleton_method(:find) do |id|
      found_word = nil
      @@words.each() do |word|
        if word.id().eql?(id)
          found_word = word
        end
      end
      found_word
    end

    define_method(:add_definition) do |definition|
      @defines.push(definition)
    end
  end
