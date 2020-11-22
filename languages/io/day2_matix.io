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

Matrix transpose := method(
    listTransposed := List clone
    for(j, 0, self numColumns - 1,
        row := List clone
        for(i, 0, self numRows - 1,
            row append(self get(i, j))
        )
        listTransposed append(row)
    )
    return Matrix clone fromList(listTransposed)
)

Matrix writeFile := method(filename,
    file := File with(filename)
    file remove
    file openForUpdating
    for(i, 0, self asList size - 1,
        file write(self asList at(i) join(", "))
        file write("\n")
    )
    file close
)

Matrix readFile := method(filename,
    file := File with(filename)
    file openForReading
    lines := file readLines
    file close
    
    newlistRepr := List clone

    for(i, 0, lines size - 1,
        row := lines at(i) split(", ")
        // row println
        newlistRepr append(row)
    )
    
    newMatrix := Matrix clone
    newMatrix fromList(newlistRepr)
    return newMatrix
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

"Demo Matrix fromList" println
mat := Matrix clone
mat fromList(list(list(1, 2, 3), list(4, 5, 6)))
mat asList println
mat numRows println
mat numColumns println
"\n" println

"Demo Matrix get" println
mat get(1, 1) println
"\n" println

"Demo Matrix set" println
mat set(1, 2, 10)
mat asList println
"\n" println

"Demo Matrix transpose" println
mat fromList(list(list(1, 2, 3), list(4, 5, 6)))
mat asList println
matT := mat transpose 
matT asList println
"\n" println


"Demo Matrix writeFile and readFile" println
matT writeFile("mat.txt")
newMatrix := Matrix readFile("mat.txt")
newMatrix asList println
"\n" println


"Demo SquareMatrix transposeInPlace" println
sqMat := SquareMatrix clone
sqMat fromList(list(
    list(1, 2, 3),
    list(4, 5, 6),
    list(7, 8, 8)
))
sqMat asList println
sqMat transposeInPlace
sqMat asList println
"\n" println

