img = imread ('bird.jpg');
gray = rgb2gray (img);

%apply canny edge detection
edges = edge(gray, 'canny');

%Display
figure;

subplot(1,2,1); imshow(img); title('Original Image');
subplot(1,2,2); imshow(edges); title('canny edge detection Image');
