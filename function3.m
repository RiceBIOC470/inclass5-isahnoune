function image = function3(img,number)
if nargin == 2
    z = stretchlim(img);
    image = imadjust(img, stretchlim(img), [number, 1-number]);
elseif nargin == 1
    image = imadjust(img, stretchlim(img), [0.1, 0.99]);
end
imshow(image);
end