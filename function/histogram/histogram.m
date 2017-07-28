function [ histo ] = histogram( img_input )
%HISTOGRAM Summary of this function goes here
%   Detailed explanation goes here

img = grayscale(img_input);
[rows, columns] = size(img);

x = 1:256;
% n = 0:255;
count = 0;

for z = 1:255
    for i = 1:rows
        for j = 1:columns
            if img(i,j) == z-1
                count = count+1;
            end
        end
    end
    
    x(z) = count;
    count = 0;
end

histo = x;

end

