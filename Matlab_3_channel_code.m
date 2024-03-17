
% first i will Load the input image
inputImage = imread('peppers.png');

%%%%%%%%%%%%%%%%%%%% Extract the red cahannel%%%%%%%%%%%%%%%%%%%%%%%%%%
redComponent=inputImage;
% i will delete the green and blue channel and let only the red exists
redComponent(:, :, 2)=0;
redComponent(:, :, 3)=0;

%%%%%%%%%%%%%%%%%%%% Extract the geen cahannel%%%%%%%%%%%%%%%%%%%%%%%%%%

greenComponent=inputImage;
% i will delete the red and blue channel and let only the green exists
greenComponent(:, :, 1)=0;
greenComponent(:, :, 3)=0;

%%%%%%%%%%%%%%%%%%%% Extract the blue cahannel%%%%%%%%%%%%%%%%%%%%%%%%%%

blueComponent=inputImage;
% i will delete the red and green channel and let only the blue exists

blueComponent(:, :, 1)=0;
blueComponent(:, :, 2)=0;



% i display the original image
subplot(2, 2, 1);
imshow(image);
title('Original Image');


% i display the red color component 
subplot(2, 2, 2);
imshow(redComponent);
title('Red Component');

% i display the green color component
subplot(2, 2, 3);
imshow(greenComponent);
title('Green Component');

% i display the blue color component
subplot(2, 2, 4);
imshow(blueComponent);
title('Blue Component');