img = imread ('bird.jpg');
gray = rgb2gray (img);

%convert to double 
gray = im2double(gray);

%Robert Kernels 
Gx = [1 0;0 -1];
Gy = [0 1;-1 0];

% apply conclution 
Ix = conv2(gray,Gx,'same');
Iy = conv2(gray, Gy,'same');

%Gradient Mangnitude
G = sqrt(Ix.^2 + Iy.^2);

%Display
figure;

subplot(2,3,1); imshow(img); title('Original Image');
subplot(2,3,2); imshow(gray); title('GrayScale Image');
subplot(2,3,3); imshow(Ix, []); title("Roberts Gx");
subplot(2,3,4); imshow(Iy, []); title("Roberts Gy");
subplot(2,3,5); imshow(G, []); title("Robert Edge Detection");
