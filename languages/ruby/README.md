# Solutions for Ruby

Completed using `ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-darwin19]` and `irb 1.2.6 (2020-09-14)`.

## Day 1

Find:  
The Ruby API: https://rubyapi.org/  
The free online version pf _Programming Ruby: The Pragmatic Programmer's Guide_ \[TFH08\]:  https://ruby-doc.com/docs/ProgrammingRuby/  
A method that substitutes part of a string: https://rubyapi.org/2.7/o/string#method-i-gsub  
Information about Ruby's regular expressions: https://rubyapi.org/2.7/o/regexp  
Information about Ruby's ranges: https://rubyapi.org/2.7/o/range  

Do:  
[Exercises](day1.rb)  
[Bonus](day1_bonus.rb)

## Day 2

Find:  
Find out how to access files with and without code blocks. What is the benefit of the code block?  
With code block: https://rubyapi.org/2.7/o/file#method-c-open  
Without code block: https://rubyapi.org/2.7/o/file#method-c-new  
The benefit of using the code block is that the file is automatically closed.  
  
How would you translate a hash to an array? https://rubyapi.org/2.7/o/hash#method-i-to_a  
Can you translate arrays to hashes? Yes: `a.map.with_index {|e, i| [i, e] }.to_h`  
  
Can you iterate through a hash?  Yes: https://rubyapi.org/2.7/o/hash#method-i-each  
  
You can use Ruby arrays as stacks. What other common data structures do arrays support?  
Queues, Dequeues, Matrices, Hash Maps  

Do:
Print an array of 16 by 4 using just `each` and then with `each_slice` in `Enumerable`. [Solution](day2_16_by_4.rb)  
Make and improved tree. [Solution](day2_improved_tree.rb)  
Write a simple grep. [Solution](day2_simple_grep.rb)  

## Day 3

Modify the CSV application to support an `each` method to return a `CsvRow` object . Use `missing method` on that `CsvRow` to return the value for the column for a given heading. [Solution](day3.rb)
