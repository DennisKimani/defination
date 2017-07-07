require('rspec')
 require('defination')

#this is our word class where the words are going to be added.
 describe(Word) do
   describe("#single") do
     it('lets one display the word entered')do
       test_word = Word.new("go")
       expect(test_word.single()).to(eq("go"))
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


   describe(Word) do
     before() do
       Word.clear()
     end
   end

   it('accepts the input word entered') do
     expect("food").to(eq("food"))
   end

   it('displays the word to the index page') do
     expect("dog").to(eq("dog"))
   end
 end

#this is the description 
