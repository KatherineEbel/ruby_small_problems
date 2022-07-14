# Without using the Matrix class, transpose a
# 3 x 3 array
#

def transpose(matrix)
  [*0...matrix.size].map do |col|
    [*0...matrix.size].map { |row| matrix[row][col] }
  end
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]