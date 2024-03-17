% Load the input image
inputImage = imread('peppers.png');

% i will choose this as the value of the filter
kernel = 1/25 * [1,1,1,1,1
                1,1,1,1,1
                1,1,1,1,1
                1,1,1,1,1
                1,1,1,1,1];

% i will make the convlution with each channel speretaly 
r = conv2(input_image(:,:,1), kernel, 'same');
g = conv2(input_image(:,:,2), kernel, 'same');
b = conv2(input_image(:,:,3), kernel, 'same');

% here i combine  3 color channels to display it as RGB
blurred = cat(3, r, g, b);


% i will display the original image

subplot(1, 2, 1);
imshow(inputImage );
title('Original Image');



% i will display the blurred image
subplot(1, 2, 2);
imshow(blurred);
title('Blurred Image');



