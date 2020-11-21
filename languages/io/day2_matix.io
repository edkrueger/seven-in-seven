Matrix := Object clone
Matrix listRepr ::= nil
Matrix numRows ::= nil
Matrix numColumns ::= nil

Matrix fromList := method(inputList,
    self setListRepr(inputList)
    self setNumRows(inputList size)
    self setNumColumns(inputList at(0) size)
)

Matrix asList := method(
    return self listRepr
)

Matrix set := method(i, j, value,
    self listRepr at(i) atPut(j, value)
)

Matrix get := method(i, j,
    return self listRepr at(i) at(j)
)

mat := Matrix clone
mat fromList(list(list(1, 2, 3), list(4, 5, 6)))
mat asList println
mat numRows println
mat numColumns println
mat get(1, 1) println