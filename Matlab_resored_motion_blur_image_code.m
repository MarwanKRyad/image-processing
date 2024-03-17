% Load the input image

epsilon = 0.1; %it's small constant because when i calculte the original image i divide on zero
inputImage = imread('peppers.png');
input_image = im2double(inputImage);
 
%kernel

kernel = 1/7 *[ 0 0 0 0 0 0 0 ;
                0 0 0 0 0 0 0 ;
                0 0 0 0 0 0 0 ;
                1 1 1 1 1 1 1 ; 
                0 0 0 0 0 0 0 ;
                0 0 0 0 0 0 0 ;
                0 0 0 0 0 0 0 ;
                 ];

% i will Convolve kernel with each color channel
r = conv2(input_image(:,:,1), kernel);
g = conv2(input_image(:,:,2), kernel);
b = conv2(input_image(:,:,3), kernel);

%i will Combine color channels
motion_blurred =   cat(3, r, g, b);

% Display original and  motion blurred output

subplot(2, 2, 1);
imshow(input_image);
title('original Image');

subplot(2, 2, 2);
imshow(motion_blurred);
title('Blurred Image');

%  i will Take FFT of the blurred image
f_blurred = fft2(motion_blurred);

% i will Take FFT of kernel (filter ) and i will modifiy it's size 
f_kernel = fft2(kernel, size(motion_blurred, 1), size(motion_blurred, 2));
%i will divide fourier transform of blurred image by fourier transform of kernel
f_inverse = f_blurred ./ (f_kernel+epsilon);
%i will get the restored_image in space domain 
restored_image= abs (ifft2 (f_inverse));
subplot(2, 2, 3);
imshow( restored_image);
title('restored Image');