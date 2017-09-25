%AW: 0.8/1 see comment below. 

%Inclass assignment 5. 

% 1. (a) Write a function that reads in an image and displays it so that 1%
% of the pixels are black and 1% of the pixels are white. Hint: your
% function can call the stretchlim function, see the help for that function.
% (b) Write a second function where the fraction of pixels to display as
% black or white are equal and can be specified as a second input to this
% function. (c) Redo part (b) but make the option to specify the fraction
% of black/white pixels optional with a default value of 1% if not
% specified. 

%AW: Your functions below are doing the opposite of what they should. As you make more of the pixels black/white
% they decrease contrast rather than increase it. You should pass your "Number" argument to stretchlim as in:
%  image = imadjust(img, stretchlim(img, [number, 1-number]));
% -0.2. 

%a
img = imread('Cat.jpg');
a = function1(img);

function image = function1(img)
stretchlim(img);
image = imadjust(img, stretchlim(img), [0.1, 0.99]);
imshow(image);
end

%b
number = 0.3;
img = imread('Cat.jpg');
a = function2(img,number);

function image = function2(img,number)
stretchlim(img);
image = imadjust(img, stretchlim(img), [number, 1-number]);
imshow(image);
end

%c
number = 1;
img = imread('Cat.jpg');
a = function3(img, number);

function image = function3(img,number)
if nargin == 2
    z = stretchlim(img);
    image = imadjust(img, stretchlim(img), [number, 1-number]);
elseif nargin == 1
    image = imadjust(img, stretchlim(img), [0.1, 0.99]);
end
imshow(image);
end

%2. Write a function to take the reverse complement of a DNA sequence, that
%is, returns the complementary base pair for each base, read from end
%to beginning. (e.g. the reverse compliment of ATGC is GCAT). Do not use the
%builtin MATLAB function for this. 

DNA = 'ACTGCTAGCTA';
DNA2 = function4(DNA);

function ReverseDNA = function4(DNA)
DNA2 = "";
DNA = reverse(DNA);
for i = 1:length(DNA)
if DNA(i) == 'A'
    DNA2 = DNA2 + 'T';
elseif DNA(i) == 'G'
    DNA2 = DNA2 + 'C';
elseif DNA(i) == 'C'
    DNA2 = DNA2 + 'G';
elseif DNA(i) == 'T'
    DNA2 = DNA2 + 'A';
end
ReverseDNA = DNA2;
end
