// Evaluate `1 + 1` and then `1 + "one"`. Is Io strongly typed or weakly typed. Support your answer with code.  

// this runs
(1 + 1) println

// this doesn't run
// 1 + "one" println

// Is 0 true or false? What about the empty string? Is nil true of false? Support your answer with code.  

// 0 is true
0 asBoolean println

// "" is true
"" asBoolean println

// why?
// all numbers are true because they are of the Number type
// Number type has Object as a prototype
// Number type does not override Objects's isTrue
// Object's isTrue is true
// a simular chain applies to ""

// nil is neither true or false; io has 3 valued logic
nil asBoolean println

// How can you tell what slots a prototype accepts?

// sending a type the proto message lists the slots
Number proto print

// What is the difference between `=` (equals), `:=`(colon equals), and `::=` (colon colon equals)? When would you use each one?

// = Assigns a value to an existing slot
// := Creates a slot and assigns a value
// ::= Creates a slot, assigns a value and creates a setter

// = can be used to override an existing slot
// := can be used for a slot that is not intended for external access
// ::= can be used make make a slot and provide external access

Car := Object clone
Car wheels := 4
Car driver ::= nil

myCar := Car clone
myCar setDriver("Edward")
myCar wheels println
myCar driver println