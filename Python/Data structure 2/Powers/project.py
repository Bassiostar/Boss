def is_power_of_8(n):
    if n <= 0:
        return False
    while n % 8 == 0:
        n = n // 8
    return n == 1

try:
    user_input = int(input("Enter a number to check: "))
    if is_power_of_8(user_input):
        print(f"The number {user_input} is a power of 8.")
    else:
        print(f"The number {user_input} is not a power of 8.")
except ValueError:
    print("Invalid input. Please enter an integer.")
