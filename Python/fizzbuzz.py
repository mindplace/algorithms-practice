def fizzbuzz():
    i = 1
    while i <= 30:
        x = ""
        if (i % 3 == 0):
            x += "Fizz"

        if (i % 5 == 0):
            x += "Buzz"

        if (x == ""):
            x += str(i)
            
        print x
        i += 1

fizzbuzz()
