require('rspec')
 require('defination')

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

   it('accepts the input word entered') do
     expect("food").to(eq("food"))
   end

   it('displays the word to the index page') do
     expect("dog").to(eq("dog"))
   end
 end
