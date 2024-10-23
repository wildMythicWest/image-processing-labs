
H3 = [
  1 -2 1;
  -2 4 -2;
  1 -2 1;
];

H6 = [
  -1 -2 -1;
  0 0 0;
  1 2 1;
];

H10 = [
  1 2 1;
  0 0 0;
  -1 -2 -1;
];

H11 = [
  2 1 0;
  1 0 -1;
  0 -1 -2;
];

input_image = imread('coffee.webp');
% imshow(input_image)
gray_image = rgb2gray(input_image);
% imshow(gray_image)
output_image = filter2(H6, gray_image);

imshow(output_image);

% analyze_filter(H3, 'H3');
% analyze_filter(H6, 'H6');
% analyze_filter(H10, 'H10');
% analyze_filter(H11, 'H11');
