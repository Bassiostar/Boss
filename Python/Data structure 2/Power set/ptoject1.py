def find_all_substrings(s):
    substrings = []
    
    for i in range(len(s)):
        for j in range(i + 1, len(s) + 1):
            substrings.append(s[i:j])
    
    return substrings

if __name__ == "__main__":
    try:
        user_input = input("Enter a string: ")
        
        all_substrings = find_all_substrings(user_input)
        
        print(f"The original string is: '{user_input}'")
        print(f"All substrings are: {all_substrings}")
        print(f"Total number of substrings found: {len(all_substrings)}")

    except Exception as e:
        print(f"An error occurred: {e}")
