TwoDList := List clone

TwoDList dim := method(x, y,
    for(i, 0, x - 1,
        row := List clone
        for(j, 0 , y - 1,
            row append(nil)
        )
        self append(row)
    )
)

TwoDList set := method(i, j, value,
    self at(i) atPut(j, value)
)

TwoDList get := method(i, j,
    return self at(i) at(j)
)


2dlist := TwoDList clone
2dlist dim (4, 3)
2dlist set (1, 2, 3)
2dlist println
2dlist get(1, 2) println




