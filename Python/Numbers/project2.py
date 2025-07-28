def find_gcd(a, b):
    while(b):
        a, b = b, a % b
    return a

def find_lcm(num1, num2):
    if num1 == 0 or num2 == 0:
        return 0
    
    gcd = find_gcd(num1, num2)
    lcm = (num1 * num2) // gcd
    return lcm

num1_str = input("Enter the first number: ")
num2_str = input("Enter the second number: ")

try:
    num1 = int(num1_str)
    num2 = int(num2_str)

    if num1 < 0 or num2 < 0:
        print("Please enter non-negative numbers.")
    else:
        lcm_result = find_lcm(num1, num2)
        print(f"The LCM of {num1} and {num2} is {lcm_result}")

except ValueError:
    print("Invalid input. Please enter whole numbers only.")