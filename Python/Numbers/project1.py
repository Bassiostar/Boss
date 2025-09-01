def binary_to_decimal(binary_string):
    return int(binary_string, 2)

user_binary_input = input("Please enter a binary number: ")

try:
    decimal_result = binary_to_decimal(user_binary_input)
    print(f"The binary number '{user_binary_input}' is equal to {decimal_result} in decimal.")
except ValueError:
    print(f"Error: '{user_binary_input}' is not a valid binary number. Please use only '0's and '1's.")