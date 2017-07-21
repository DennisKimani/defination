class Description
  @@descriptions = []

  attr_reader(:name, :id)

  define_method(:initialize) do |name|
    @name = name
    @id = @@description.length()+(1)
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
