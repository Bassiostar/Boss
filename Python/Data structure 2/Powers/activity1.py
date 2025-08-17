def power0f4(number):
    count = 0

    if number & (number - 1) == 0:  
        while number > 1:
            number >>= 1
            count += 1
        return count
    return False
number = int(input("Enter a number: "))
if power0f4(number):
    print(number, "is a power of 4")
else:
    print(number, "is not a power of 4")