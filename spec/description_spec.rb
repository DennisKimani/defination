require('rspec')
  require('description')

  describe('Description') do
    before() do
      Description.clear()
    end

    describe("#name") do
      it("returns the name of the description") do
        test_description = Description.new("run")
        expect(test_description.name()).to(eq("run"))
      end
    end

  describe(".all") do
      it("is empty at first") do
        expect(Description.all()).to(eq([]))
      end
    end

   describe("#save") do
      it("adds a description to the array of saved descriptions") do
        test_description = Description.new("run")
        test_description.save()
        expect(Description.all()).to(eq([test_description]))
      end
    end

   describe(".clear") do
      it("empties out all of the saved descriptions") do
        Description.new("Bryan").save()
        Description.clear()
        expect(Description.all()).to(eq([]))
      end
    end

    describe("#id") do
      it("returns the id of the description") do
        test_description = Description.new("Bryan")
        test_description.save()
        expect(test_description.id()).to(eq(1))
      end
    end

    describe(".find") do
    it("returns a description by its id number") do
      test_description = Description.new("Bryan")
      test_description.save()
      test_description2 = Description.new("Memeti")
      test_description2.save()
      expect(Description.find(test_description.id())).to(eq(test_description))
    end
  end

  define_singleton_method(:find) do |identification|
      found_description = nil
      @@descriptions.each() do |description|
        if description.id().eql?(identification.to_i())
          found_description = description
        end
      end
      found_description
    end
  end
