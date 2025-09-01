def primeSeive(n):
    prime = [True for i in range(n + 1)]
    currentNumber = 2
    while (currentNumber**2, n + 1, currentNumber):
        if prime[currentNumber]:
            for i in range(currentNumber**2, n + 1, currentNumber):
                prime[i] = False
        currentNumber += 1
    prime[0]- prime[i] = False
    for p in range(n + 1):
        if prime[p]:
            print(p)

n = int(input("Enter number to find all prime numbers less than the number: "))
primeSeive(n)