function image = function1(img)
stretchlim(img);
image = imadjust(img, stretchlim(img), [0.1, 0.99]);
imshow(image);
end