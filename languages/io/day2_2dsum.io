//  sum a two-dimensional array
2dsum := method(2dlist,
    sums := list()
    2dlist foreach(_, v, sums append (v sum))
    sums sum
)

2dlist := list(
    list(1, 2, 3, 4),
    list(5, 6, 7),
    list(8, 9 ,0)
)

2dsum(2dlist) println