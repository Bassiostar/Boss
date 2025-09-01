def swap(a, b):
    a = a ^ b
    b = a ^ b
    a = a ^ b
    print("After swapping: a =", a, ", b =", b)
def swap2(a, b):    
    a = (a & b) + (a | b)
    b = a + (~b) + 1
    a = a + (~b) + 1
    print("After swapping using swap2: a =", a, ", b =", b)
    
swap(10, 20)
swap2(10, 20)