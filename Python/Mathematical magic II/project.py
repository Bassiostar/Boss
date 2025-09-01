def is_prime(n):
    if n < 2:
        return False
    # Check for divisors from 2 up to the square root of n
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            return False
    return True

def find_two_digit_primes():
    """
    Finds and prints all two-digit prime numbers.
    Two-digit numbers range from 10 to 99.
    """
    print("The two-digit prime numbers are:")
    for number in range(10, 100):
        if is_prime(number):
            print(number)

# Run the function to find and print the prime numbers
find_two_digit_primes()