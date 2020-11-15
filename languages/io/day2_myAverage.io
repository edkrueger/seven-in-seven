List myAverage := method(if(self size != 0, self sum / self size, Error with ("List must be non empty.")))

l := list(1, 2, 3, 4, 5, 6)
l myAverage println

l2 := list()
l2 myAverage println