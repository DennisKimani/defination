class Description
  @@descriptions = []

  attr_reader(:name, :id)

  define_method(:initialize) do |name|
    @name = name
    @id = @@descriptions.length + 1
  end

  define_singleton_method(:all) do
    @@descriptions
  end

  define_method(:save) do
    @@descriptions.push(self)
  end

  define_method(:clear) do
    @@descriptions = []
  end

  define_singleton_method(:find) do |id|
    found_description = nil
    @@descriptions.each do |description|
      if description.id.eql?(id)
        found_description = description
      end
    end
    found_description
  end
end
