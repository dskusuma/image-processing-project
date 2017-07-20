function [ img_output ] = grayscale( img_input )
%GRAYSCALE Summary of this function goes here
%   Detailed explanation goes here

[rows, columns, ~] = size(img_input);

img_output = zeros(rows,columns);
for i = 1:rows
    for j = 1:columns
        img_output(i,j) = img_input(i,j,1) * 0.2989 + img_input(i,j,2) * 0.5870 + img_input(i,j,3) * 0.1140;
    end
end

img_output = uint8(img_output);

% try
%     [rows, columns, numberOfColorChannels] = size(img_input);
%     if numberOfColorChannels == 3
%         redChannel = img_input(:,:,1);
%         greenChannel = img_input(:,:,2);
%         blueChannel = img_input(:,:,3);
%         
%         gray
%     else
%     end
% catch
%     
% end


end
