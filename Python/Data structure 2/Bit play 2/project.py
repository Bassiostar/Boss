import math

def find_rightmost_set_bit_position(n):
    if n == 0:
        return 0

    rightmost_bit = n & -n
    
    position = int(math.log2(rightmost_bit)) + 1
    
    return position