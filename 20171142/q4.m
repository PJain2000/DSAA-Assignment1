filename = {'sample.jpg'};

file = filename

img = imread(char(file));

a = RESIZE(img, 5);
b = RESIZE(img, 10);

subplot(2, 2, 1);
image(a);

subplot(2, 2, 3);
image(b);
