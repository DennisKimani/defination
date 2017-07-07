require('rspec')
 require('defination')

 describe(Word) do
   describe("#description") do
     it('lets one give a description to a word')do
       test_word = Word.new("go")
       expect(test_word.description()).to(eq("go"))
     end
   end

   it('accepts the input word entered') do
     expect("food").to(eq("food"))
   end

   it('displays the word to the index page') do
     expect("dog").to(eq("dog"))
   end
 end
