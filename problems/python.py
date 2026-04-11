def initialize_grid(n):
    # Creating a grid of size n x n
    grid = [[0] * n] * n
    
    # Updating the top-left corner
    grid[0][0] = 1
    
    return grid

# Test it
print(f"First row: {initialize_grid(3)}") 
# Expected Output: [1, 0, 0]
