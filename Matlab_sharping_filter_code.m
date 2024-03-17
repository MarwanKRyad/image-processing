% Load the input image
inputImage = imread('peppers.png');

input_image = im2double(inputImage);

kernel = [1 1 1;0 1 0;-1 -1 -1];

% i will make the convlution with each channel speretaly 
r = conv2(input_image(:,:,1), kernel, 'same');
g = conv2(input_image(:,:,2), kernel, 'same');
b = conv2(input_image(:,:,3), kernel, 'same');

% i will Combine color channels
sharpened = cat(3, r, g, b);



% i will display Display the original image

subplot(1, 2, 1);
imshow(inputImage );
title('Original Image');



%  i will Display sharpened output
subplot(1, 2, 2);
imshow(sharpened);
title('sharpened Image');


