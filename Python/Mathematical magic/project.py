def multiply_direct(N, M):
  """Multiplies N to M directly."""
  return N * M

def multiply_repeated_addition(N, M):
  """Multiplies N to M using N iterations (repeated addition)."""
  if N < 0: return -multiply_repeated_addition(-N, M)
  result = 0
  for _ in range(N): result += M
  return result

# --- Example Usage ---
try:
  N = int(input("Enter N: "))
  M = int(input("Enter M: "))
except ValueError:
  print("Invalid input. Please enter integers.")
else:
  print(f"Direct: {N} * {M} = {multiply_direct(N, M)}")
  print(f"Repeated Addition: {N} * {M} = {multiply_repeated_addition(N, M)}")