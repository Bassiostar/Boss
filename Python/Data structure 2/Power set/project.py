def longest_consecutive_ones(n):
    if n < 0:
        return 0

    max_count = 0
    current_count = 0
    
    while n > 0:
        if (n & 1) == 1:
            current_count += 1
        else:
            max_count = max(max_count, current_count)
            current_count = 0
        
        n = n >> 1

    return max(max_count, current_count)


if __name__ == "__main__":
    try:
        user_input = int(input("Enter a non-negative integer: "))

        result = longest_consecutive_ones(user_input)
        
        print(f"\nThe number you entered is: {user_input}")
        print(f"The binary representation is: {bin(user_input)[2:]}")
        print(f"The longest consecutive sequence of 1s is: {result}")

    except ValueError:
        print("Invalid input. Please enter a valid non-negative integer.")

