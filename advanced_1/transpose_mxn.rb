# Without using the Matrix class, transpose a
# 3 x 3 array
# ol = or x C + oc (ignore base reference for simplicity)
# 1,2,3,4,5
# 4,3,2,1,0
# 3,7,8,6,2
#
# [1, 4, 3],
# [2, 3, 7],
# [3, 2, 8],
# [4, 1, 6],
# [5, 0, 2]

def transpose(matrix)
  m = matrix[0].size
  n = matrix.size
  [*0...m].map do |col|
    [*0...n].map { |row| matrix[row][col] }
  end
end

p transpose([[1, 2, 3, 4]])  == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]])  == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]])  == [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]