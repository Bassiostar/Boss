def reverse_bits(n):
    binary_string = bin(n)[2:]
    reversed_binary_string = binary_string[::-1]
    reversed_number = int(reversed_binary_string, 2)
    return reversed_number, reversed_binary_string

try:
    user_input = int(input("Enter a number: "))
    decimal_result, binary_result = reverse_bits(user_input)
    print(f"The number with reversed bits is: {decimal_result}")
    print(f"The binary code of the reversed number is: {binary_result}")
except ValueError:
    print("Invalid input. Please enter a valid integer.")