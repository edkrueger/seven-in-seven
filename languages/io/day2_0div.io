Number div := Number getSlot ("/")
Number / = method(other, if(other == 0, 0, self div(other)))

(1 / 0) println
(1 / 2) println