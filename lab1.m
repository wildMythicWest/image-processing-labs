input_image = [
  0, 0, 1, 1, 1, 1, 0, 0;
  0, 0, 1, 0, 0, 0, 0, 0;
  0, 0, 1, 0, 0, 0, 0, 0;
  0, 0, 1, 1, 1, 1, 0, 0;
  0, 0, 1, 0, 0, 1, 0, 0;
  0, 0, 1, 0, 0, 1, 0, 0;
  0, 0, 1, 1, 1, 1, 0, 0;
  0, 0, 0, 0, 0, 0, 0, 0;
]


H = wh_transformation_matrix(8);


transformant_image = H * input_image * H;

transformant_image

spectral_diagram = abs(transformant_image);

spectral_diagram = spectral_diagram / max(spectral_diagram(:));  % Normalize to [0, 1]


% Display the spectral diagram
figure;
imagesc(spectral_diagram);      % Create a heatmap representation
colorbar;                        % Add a color bar
title('Spectral Diagram of Transformant Image');
axis equal;                     % Keep aspect ratio


% Calculate the Mean Square Transformant
mean_square_transformant = mean(abs(transformant_image(:)).^2);

% Display the result
mean_square_transformant


tuned_image = transform_matrix(@(x) remove_low_information_region(x, 2), transformant_image);

tuned_image


resultant_image = H * tuned_image * H / (8*8);


figure;
imshow(resultant_image);


% да измерим средноквадратичната грешка








