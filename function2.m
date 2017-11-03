function image = function2(img,number)
stretchlim(img);
image = imadjust(img, stretchlim(img), [number, 1-number]);
imshow(image);
end