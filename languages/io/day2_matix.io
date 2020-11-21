Matrix := Object clone
Matrix listRepr ::= nil

Matrix dim := method(x, y,

    setListRepr(List clone)

    for(i, 0, x - 1,
        row := List clone
        for(j, 0 , y - 1,
            row append(nil)
        )
        self listRepr append(row)
    )
)

Matrix set := method(i, j, value,
    self listRepr at(i) atPut(j, value)
)

Matrix get := method(i, j,
    return self listRepr at(i) at(j)
)

matA := Matrix clone
matA dim (4, 3)
matA set (1, 2, 3)
matA listRepr println
matA get(1, 2) println

matB := Matrix clone
matB setListRepr(list(list(1, 2), list(3, 4) ))
matB listRepr println
matB get(1, 1) println