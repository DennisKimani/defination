require('rspec')
 require('word')

#this is our word class where the words are going to be added.
 describe('Word') do
   before() do
     Word.clear()
   end

   describe("#single") do
     it('lets one display the word entered')do
       test_word = Word.new("go")
       expect(test_word.single()).to(eq("go"))
     end
   end

   describe("#id") do
     it("returns the id of the word") do
       test_word = Word.new("Party")
       test_word.save()
       expect(test_word.id()).to(eq(1))
     end
   end

   describe(".find") do
     it("returns a word by its id number") do
       test_word = Word.new("Party")
       test_word.save()
       test_word2 = Word.new("go")
       test_word2.save()
       expect(Word.find(test_word.id())).to(eq(test_word))
     end
   end

   describe(".all") do
     it("is empty at first") do
       expect(Word.all()).to(eq([]))
     end
   end

   describe("#save") do
     it("adds a word to the array of saved words") do
       test_word = Word.new("coding")
       test_word.save()
       expect(Word.all()).to(eq([test_word]))
     end
   end

   describe("#save") do
     it("adds a word to the array of saved words") do
       test_word = Word.new("Pack")
       test_word.save()
       expect(Word.all()).to(eq([test_word]))
     end
   end

   describe(".clear") do
     it("empties out all of the saved words") do
       Word.new("coding").save()
       Word.clear()
       expect(Word.all()).to(eq([]))
     end
   end
end
 #   it('accepts the input word entered') do
 #     expect("food").to(eq("food"))
 #   end
 #
 #   it('displays the word to the index page') do
 #     expect("dog").to(eq("dog"))
 #   end
 # end

#this is the description
