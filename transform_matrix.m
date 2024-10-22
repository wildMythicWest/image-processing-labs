function result = transform_matrix(transformation, matrix)
  [rows, cols] = size(matrix);
  result = zeros(rows, cols);
  for i = 1:rows
    for j = 1:cols
        result(i, j) = transformation(matrix(i, j));
    end
  end
end
