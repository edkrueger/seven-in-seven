// Matrix Prototype
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

// Square Matrix Prototype
SquareMatrix := Matrix clone
Matrix transposeInPlace := method(
    for(i, 0, self numRows - 2,
        for(j, i + 1, self numRows - 1,
            ij := self get(i, j) clone
            ji := self get(j, i) clone
            self set(i, j, ji)
            self set(j, i, ij)
        )
    )
)

// demo Matrix
mat := Matrix clone
mat fromList(list(list(1, 2, 3), list(4, 5, 6)))
mat asList println
mat numRows println
mat numColumns println
mat get(1, 1) println
mat set(1, 2, 10)
mat asList println

// demo Square Matrix transposeInPlace 
sqMat := SquareMatrix clone
sqMat fromList(list(
    list(1, 2, 3),
    list(4, 5, 6),
    list(7, 8, 8)
))
sqMat asList println
sqMat transposeInPlace
sqMat asList println

