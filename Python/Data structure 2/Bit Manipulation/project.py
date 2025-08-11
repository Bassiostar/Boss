def solve_circuit(A, B, C):
    # First AND gate: takes inputs A and B
    and_gate_1_output = A and B

    # Second AND gate: takes inputs A and C
    and_gate_2_output = A and C

    # Final OR gate: takes the outputs of the two AND gates as inputs
    Q = and_gate_1_output or and_gate_2_output

    return Q

def generate_truth_table():
    print("Truth Table for the Logic Circuit")
    print("---------------------------------")
    print("| A | B | C | Q |")
    print("---------------------------------")

    # Iterate through all possible combinations of inputs (000 to 111)
    for A in [0, 1]:
        for B in [0, 1]:
            for C in [0, 1]:
                # Calculate the output for the current combination
                Q = solve_circuit(A, B, C)
                # Print the row of the truth table
                print(f"| {A} | {B} | {C} | {Q} |")

    print("---------------------------------")

# Run the function to generate and print the truth table
generate_truth_table()

