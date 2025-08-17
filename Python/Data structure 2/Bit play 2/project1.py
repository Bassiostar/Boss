import math

def reverse_bits(n):
    if n == 0:
        return 0

    binary_string = bin(n)[2:]

    bit_width = 32
    padded_binary = binary_string.zfill(bit_width)

    reversed_binary = padded_binary[::-1]

    reversed_number = int(reversed_binary, 2)

    return reversed_number
