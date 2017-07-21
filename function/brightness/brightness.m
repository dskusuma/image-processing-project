function [ img_output ] = brightness( img_input , brightness_value )
%BRIGHTNESS Summary of this function goes here
%   Detailed explanation goes here

[rows, columns, depth] = size(img_input);

img_output = zeros(rows,columns,depth);

for i = 1:rows
    for j = 1:columns
        for k = 1:depth
            img_output(i,j,k) = img_input(i,j,k) + brightness_value;
        end
    end
end

img_output = uint8(img_output);

end

