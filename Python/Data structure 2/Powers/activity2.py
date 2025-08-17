def computePower(x,y):
    result = 1
    while y > 0:
        if y % 2 == 1:
            result = result * x
        x = x * x
        y= y // 2
    return result

x = int(input("Enter base(x): "))
y = int(input("Enter exponent(y): "))
print("Result:", computePower(x, y))