// recursive Fibonacci
fiboRec := method(n, if(n == 1 or n == 2, 1, fiboRec(n - 1) + fiboRec(n - 2)))
for (i, 1, 8, fiboRec(i) println)

// iterative Fibonacci
fiboIter := method(
    n,
    first := 1
    second := 1
    for(i, 3, n,
        sum := first + second
        first = second
        second = sum
        i = i + 1
    )
    second
)

for (i, 1, 8, fiboIter(i) println)



