class Description
  @@description = []

  attr_reader(:name, :id)

  define_method(:initialize) do |name|
    @name = name
    @id = @@description.length()+(1)
  end

  define_singleton_method(:all) do
    @@definations
  end
