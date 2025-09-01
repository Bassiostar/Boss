def multiply_single(n, m): return n * m

def multiply_n_times(n, m):
  result = 0
  for _ in range(abs(n)): result += m if n > 0 else -m
  return result

N, M = 7, 3
print(f"Multiplying {N} by {M}:\n  Single iteration: {multiply_single(N, M)}\n  N iterations: {multiply_n_times(N, M)}")

N, M = -5, 4
print(f"\nMultiplying {N} by {M}:\n  Single iteration: {multiply_single(N, M)}\n  N iterations: {multiply_n_times(N, M)}")

N, M = -6, -2
print(f"\nMultiplying {N} by {M}:\n  Single iteration: {multiply_single(N, M)}\n  N iterations: {multiply_n_times(N, M)}")