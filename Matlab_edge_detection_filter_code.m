

% Load the input image
inputImage = imread('peppers.png');
input_image = im2double(inputImage);

% i convevt the photo from RGB to gray sacle
grayImage = rgb2gray(input_image);

kernel = [1 1 1;0 0 0;-1 -1 -1];
output=conv2(grayImage, kernel, 'same');




% Display the original image

subplot(1, 2, 1);
imshow(inputImage );
title('Original Image'); 



% i Display  the image after edge detecion
subplot(1, 2, 2);
imshow(output);
title('edge detected Image');

