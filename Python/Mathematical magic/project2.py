def myfunction(n):
    # O(n) loop
    for i in range(0, n + 1):
        pass # print("First Loop")

    # O(log n) loop
    j = 1
    while(j <= n + 1):
        j = j * 2
        pass # print("Second Loop ", j)

    # O(1) loop
    for i in range(0, 100):
        pass # print("Third loop")

# Total Time Complexity: O(n)