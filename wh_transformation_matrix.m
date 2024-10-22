% creates a walsh hadamard transformation matrix for a given size n
function H = wh_transformation_matrix(n)
    if n == 1
        H = 1; % Base case
    else
        H = [wh_transformation_matrix(n/2), wh_transformation_matrix(n/2);
             wh_transformation_matrix(n/2), -wh_transformation_matrix(n/2)];
    end
end



