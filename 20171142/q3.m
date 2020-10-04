image1 = imread('Faces.jpg');
image(image1)
image1 = rgb2gray(image1);

image2 = imread('F1.jpg');
image(image2) 
image2 = rgb2gray(image2);

new_image = normxcorr2(image2(:,:,1), image1(:,:,1));

[M,I] = max(new_image(:));
a = floor(I/size(new_image,1));
b = I - a*size(new_image,1);

imshow(new_image);
hold on;
rectangle('Position', [a - size(image2,1)/2, b - size(image2,2)/2, size(image2,1), size(image2,2)],...
         'LineWidth', 4, 'LineStyle', '-')

imshow(image1);
rectangle('Position', [a - size(image2,1), b - size(image2,2), size(image2,1), size(image2,2)],...
         'LineWidth', 4, 'LineStyle', '-')
hold off;