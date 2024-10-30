
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
figure;
imshow(input_image)
gray_image = rgb2gray(input_image);
% imshow(gray_image)
%output_image_H3 = filter2(H3, gray_image);
%output_image_H6 = filter2(H6, gray_image);

%output_image_H10 = filter2(H10, gray_image);

%output_image_H11 = filter2(H11, gray_image);

output_image_H3 = imfilter(gray_image, H3);
%output_image_H6 = filter2(H6, gray_image);

%output_image_H10 = filter2(H10, gray_image);

%output_image_H11 = filter2(H11, gray_image);


figure('Name', ['H3', ' 1'], 'NumberTitle', 'off');
imshow(output_image_H3);




%analyze_filter(H3, 'H3');
%analyze_filter(H6, 'H6');
%analyze_filter(H10, 'H10');
%analyze_filter(H11, 'H11');
