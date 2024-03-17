% Load the input image


% Load the input image
inputImage = imread('peppers.png');
input_image = im2double(inputImage);

kernel =1/7 *[ 0 0 0 0 0 0 0 ;
                0 0 0 0 0 0 0 ;
                0 0 0 0 0 0 0 ;
                1 1 1 1 1 1 1 ; 
                0 0 0 0 0 0 0 ;
                0 0 0 0 0 0 0 ;
                0 0 0 0 0 0 0 ;
                             ];

% i will Convolve kernel with each color channel
r = conv2(input_image(:,:,1), kernel, 'same');
g = conv2(input_image(:,:,2), kernel, 'same');
b = conv2(input_image(:,:,3), kernel, 'same');

% Combine color channels
blurred = cat(3, r, g, b);


%i will Display the original image

subplot(1, 2, 1);
imshow(input_image );
title('Original Image');



% Display motion blurred output
subplot(1, 2, 2);
imshow(blurred);
title('motion blured Image');


