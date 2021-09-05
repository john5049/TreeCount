function TreeCountFunc(fname)

M = imread(fname);
G = rgb2gray(M);
contrast_img = imadjust(G);

imshow(G)
imshow(contrast_img)

[height, width] = size(G);

num_True_Trees_pre = 0;
num_True_Trees_post = 0;
GoodPoints = zeros(height, width);
Infected = zeros(height, width);
tolerance = 70;

for i = 1:height
    for j = 1:width
        if G(i,j) < tolerance
            GoodPoints(i,j) = 1;
        end
    end
end


% Determine which pixels are good points
for i = 1 : height
    for j = 1 : width
            % If we find a good point, count all the adjacent good points
            % and add them to a Infected matrix
            % Increment num_True_Trees
            % See if this point is already been Infected
            if Infected(i,j) ~= 1 && GoodPoints(i,j) == 1
                % We need to add this point to the Infected Matrix
                Infected(i,j) = 1;
                % We need to count all adjacent GoodPoints and assign them
                % to Infected matrix                
                % Look up
                if GoodPoints(i-1,j) == 1
                    Infected(i-1,j) = 1;
                    disp('up')
                end
                % Look down
                if GoodPoints(i+1,j) == 1
                    Infected(i+1,j) = 1;
                    disp('down')
                end
                % Look right
                if GoodPoints(i,j+1) == 1
                    Infected(i,j+1) = 1;
                    disp('right')
                end
                % Look left
                if GoodPoints(i,j-1) == 1
                    Infected(i,j-1) = 1;
                    disp('left')
                end
                % Look up, left
                if GoodPoints(i-1,j-1) == 1
                    Infected(i-1,j-1) = 1;
                    disp('up, left')
                end
                % Look up, right
                if GoodPoints(i-1,j+1) == 1
                    Infected(i-1,j+1) = 1;
                    disp('up, right')
                end
                % Look down, left
                if GoodPoints(i+1,j-1) == 1
                    Infected(i+1,j-1) = 1;
                    disp('down, left')
                end
                % Look down, right
                if GoodPoints(i+1,j+1) == 1
                    Infected(i+1,j+1) = 1;
                    disp('down, right')
                end
                if GoodPoints(i-2,j-2) == 1
                    Infected(i-2,j-2) = 1;
                    disp('down 2 , left 2')
                end
                if GoodPoints(i-2,j-1) == 1
                    Infected(i-2,j-1) = 1;
                    disp('down 2 , left 1')
                end
                if GoodPoints(i-2,j) == 1
                    Infected(i-2,j) = 1;
                    disp('down 2')
                end
                if GoodPoints(i-2,j+1) == 1
                    Infected(i-2,j+1) = 1;
                    disp('down 2 , right 1')
                end
                if GoodPoints(i-2,j+2) == 1
                    Infected(i-2,j+2) = 1;
                    disp('down 2 , right 2')
                end
                if GoodPoints(i-1,j-2) == 1
                    Infected(i-1,j-2) = 1;
                    disp('down 1 , left 2')
                end
                if GoodPoints(i-1,j+2) == 1
                    Infected(i-1,j+2) = 1;
                    disp('down 1 , right 2')
                end
                if GoodPoints(i,j-2) == 1
                    Infected(i,j-2) = 1;
                    disp('left 2')
                end
                if GoodPoints(i,j+2) == 1
                    Infected(i,j+2) = 1;
                    disp('right 2')
                end
                if GoodPoints(i+1,j-2) == 1
                    Infected(i+1,j-2) = 1;
                    disp('up 1 , left 2')
                end
                if GoodPoints(i+1,j+2) == 1
                    Infected(i+1,j+2) = 1;
                    disp('up 1 , right 2')
                end
                if GoodPoints(i+2,j-2) == 1
                    Infected(i+2,j-2) = 1;
                    disp('up 2 , left 2')
                end
                if GoodPoints(i+2,j-1) == 1
                    Infected(i+2,j-1) = 1;
                    disp('up 2 , left 1')
                end
                if GoodPoints(i+2,j) == 1
                    Infected(i+2,j) = 1;
                    disp('up 2')
                end
                if GoodPoints(i+2,j+1) == 1
                    Infected(i+2,j+1) = 1;
                    disp('up 2 , right 1')
                end
                if GoodPoints(i+2,j+2) == 1
                    Infected(i+2,j+2) = 1;
                    disp('up 2 , right 2')
                end
                % We need to turn this pixel white
                % TODO...
                
                num_True_Trees_pre = num_True_Trees_pre + 1;
                disp('---------------------------------------')
             
            %%Make sure all adjacent points are added to Infected
            elseif Infected(i,j) == 1 && GoodPoints(i,j) == 1
                
                if GoodPoints(i-1,j) == 1
                    Infected(i-1,j) = 1;
                    disp('up')
                end
                % Look down
                if GoodPoints(i+1,j) == 1
                    Infected(i+1,j) = 1;
                    disp('down')
                end
                % Look right
                if GoodPoints(i,j+1) == 1
                    Infected(i,j+1) = 1;
                    disp('right')
                end
                % Look left
                if GoodPoints(i,j-1) == 1
                    Infected(i,j-1) = 1;
                    disp('left')
                end
                % Look up, left
                if GoodPoints(i-1,j-1) == 1
                    Infected(i-1,j-1) = 1;
                    disp('up, left')
                end
                % Look up, right
                if GoodPoints(i-1,j+1) == 1
                    Infected(i-1,j+1) = 1;
                    disp('up, right')
                end
                % Look down, left
                if GoodPoints(i+1,j-1) == 1
                    Infected(i+1,j-1) = 1;
                    disp('down, left')
                end
                % Look down, right
                if GoodPoints(i+1,j+1) == 1
                    Infected(i+1,j+1) = 1;
                    disp('down, right')
                end
                if GoodPoints(i-2,j-2) == 1
                    Infected(i-2,j-2) = 1;
                    disp('down 2 , left 2')
                end
                if GoodPoints(i-2,j-1) == 1
                    Infected(i-2,j-1) = 1;
                    disp('down 2 , left 1')
                end
                if GoodPoints(i-2,j) == 1
                    Infected(i-2,j) = 1;
                    disp('down 2')
                end
                if GoodPoints(i-2,j+1) == 1
                    Infected(i-2,j+1) = 1;
                    disp('down 2 , right 1')
                end
                if GoodPoints(i-2,j+2) == 1
                    Infected(i-2,j+2) = 1;
                    disp('down 2 , right 2')
                end
                if GoodPoints(i-1,j-2) == 1
                    Infected(i-1,j-2) = 1;
                    disp('down 1 , left 2')
                end
                if GoodPoints(i-1,j+2) == 1
                    Infected(i-1,j+2) = 1;
                    disp('down 1 , right 2')
                end
                if GoodPoints(i,j-2) == 1
                    Infected(i,j-2) = 1;
                    disp('left 2')
                end
                if GoodPoints(i,j+2) == 1
                    Infected(i,j+2) = 1;
                    disp('right 2')
                end
                if GoodPoints(i+1,j-2) == 1
                    Infected(i+1,j-2) = 1;
                    disp('up 1 , left 2')
                end
                if GoodPoints(i+1,j+2) == 1
                    Infected(i+1,j+2) = 1;
                    disp('up 1 , right 2')
                end
                if GoodPoints(i+2,j-2) == 1
                    Infected(i+2,j-2) = 1;
                    disp('up 2 , left 2')
                end
                if GoodPoints(i+2,j-1) == 1
                    Infected(i+2,j-1) = 1;
                    disp('up 2 , left 1')
                end
                if GoodPoints(i+2,j) == 1
                    Infected(i+2,j) = 1;
                    disp('up 2')
                end
                if GoodPoints(i+2,j+1) == 1
                    Infected(i+2,j+1) = 1;
                    disp('up 2 , right 1')
                end
                if GoodPoints(i+2,j+2) == 1
                    Infected(i+2,j+2) = 1;
                    disp('up 2 , right 2')
                end
            else
                % Else this point is already accounted for in the Infected
                % Matrix, move on
            end
    end
end

for i = 1:height
    for j = 1:width
        if contrast_img(i,j) < tolerance
            GoodPoints(i,j) = 1;
        end
    end
end


% Determine which pixels are good points
for i = 1 : height
    for j = 1 : width
            % If we find a good point, count all the adjacent good points
            % and add them to a Infected matrix
            % Increment num_True_Trees
            % See if this point is already been Infected
            if Infected(i,j) ~= 1 && GoodPoints(i,j) == 1
                % We need to add this point to the Infected Matrix
                Infected(i,j) = 1;
                % We need to count all adjacent GoodPoints and assign them
                % to Infected matrix                
                % Look up
                if GoodPoints(i-1,j) == 1
                    Infected(i-1,j) = 1;
                    disp('up')
                end
                % Look down
                if GoodPoints(i+1,j) == 1
                    Infected(i+1,j) = 1;
                    disp('down')
                end
                % Look right
                if GoodPoints(i,j+1) == 1
                    Infected(i,j+1) = 1;
                    disp('right')
                end
                % Look left
                if GoodPoints(i,j-1) == 1
                    Infected(i,j-1) = 1;
                    disp('left')
                end
                % Look up, left
                if GoodPoints(i-1,j-1) == 1
                    Infected(i-1,j-1) = 1;
                    disp('up, left')
                end
                % Look up, right
                if GoodPoints(i-1,j+1) == 1
                    Infected(i-1,j+1) = 1;
                    disp('up, right')
                end
                % Look down, left
                if GoodPoints(i+1,j-1) == 1
                    Infected(i+1,j-1) = 1;
                    disp('down, left')
                end
                % Look down, right
                if GoodPoints(i+1,j+1) == 1
                    Infected(i+1,j+1) = 1;
                    disp('down, right')
                end
                if GoodPoints(i-2,j-2) == 1
                    Infected(i-2,j-2) = 1;
                    disp('down 2 , left 2')
                end
                if GoodPoints(i-2,j-1) == 1
                    Infected(i-2,j-1) = 1;
                    disp('down 2 , left 1')
                end
                if GoodPoints(i-2,j) == 1
                    Infected(i-2,j) = 1;
                    disp('down 2')
                end
                if GoodPoints(i-2,j+1) == 1
                    Infected(i-2,j+1) = 1;
                    disp('down 2 , right 1')
                end
                if GoodPoints(i-2,j+2) == 1
                    Infected(i-2,j+2) = 1;
                    disp('down 2 , right 2')
                end
                if GoodPoints(i-1,j-2) == 1
                    Infected(i-1,j-2) = 1;
                    disp('down 1 , left 2')
                end
                if GoodPoints(i-1,j+2) == 1
                    Infected(i-1,j+2) = 1;
                    disp('down 1 , right 2')
                end
                if GoodPoints(i,j-2) == 1
                    Infected(i,j-2) = 1;
                    disp('left 2')
                end
                if GoodPoints(i,j+2) == 1
                    Infected(i,j+2) = 1;
                    disp('right 2')
                end
                if GoodPoints(i+1,j-2) == 1
                    Infected(i+1,j-2) = 1;
                    disp('up 1 , left 2')
                end
                if GoodPoints(i+1,j+2) == 1
                    Infected(i+1,j+2) = 1;
                    disp('up 1 , right 2')
                end
                if GoodPoints(i+2,j-2) == 1
                    Infected(i+2,j-2) = 1;
                    disp('up 2 , left 2')
                end
                if GoodPoints(i+2,j-1) == 1
                    Infected(i+2,j-1) = 1;
                    disp('up 2 , left 1')
                end
                if GoodPoints(i+2,j) == 1
                    Infected(i+2,j) = 1;
                    disp('up 2')
                end
                if GoodPoints(i+2,j+1) == 1
                    Infected(i+2,j+1) = 1;
                    disp('up 2 , right 1')
                end
                if GoodPoints(i+2,j+2) == 1
                    Infected(i+2,j+2) = 1;
                    disp('up 2 , right 2')
                end
                % We need to turn this pixel white
                % TODO...
                
                num_True_Trees_post = num_True_Trees_post + 1;
                disp('---------------------------------------')
             
            %%Make sure all adjacent points are added to Infected
            elseif Infected(i,j) == 1 && GoodPoints(i,j) == 1
                
                if GoodPoints(i-1,j) == 1
                    Infected(i-1,j) = 1;
                    disp('up')
                end
                % Look down
                if GoodPoints(i+1,j) == 1
                    Infected(i+1,j) = 1;
                    disp('down')
                end
                % Look right
                if GoodPoints(i,j+1) == 1
                    Infected(i,j+1) = 1;
                    disp('right')
                end
                % Look left
                if GoodPoints(i,j-1) == 1
                    Infected(i,j-1) = 1;
                    disp('left')
                end
                % Look up, left
                if GoodPoints(i-1,j-1) == 1
                    Infected(i-1,j-1) = 1;
                    disp('up, left')
                end
                % Look up, right
                if GoodPoints(i-1,j+1) == 1
                    Infected(i-1,j+1) = 1;
                    disp('up, right')
                end
                % Look down, left
                if GoodPoints(i+1,j-1) == 1
                    Infected(i+1,j-1) = 1;
                    disp('down, left')
                end
                % Look down, right
                if GoodPoints(i+1,j+1) == 1
                    Infected(i+1,j+1) = 1;
                    disp('down, right')
                end
                if GoodPoints(i-2,j-2) == 1
                    Infected(i-2,j-2) = 1;
                    disp('down 2 , left 2')
                end
                if GoodPoints(i-2,j-1) == 1
                    Infected(i-2,j-1) = 1;
                    disp('down 2 , left 1')
                end
                if GoodPoints(i-2,j) == 1
                    Infected(i-2,j) = 1;
                    disp('down 2')
                end
                if GoodPoints(i-2,j+1) == 1
                    Infected(i-2,j+1) = 1;
                    disp('down 2 , right 1')
                end
                if GoodPoints(i-2,j+2) == 1
                    Infected(i-2,j+2) = 1;
                    disp('down 2 , right 2')
                end
                if GoodPoints(i-1,j-2) == 1
                    Infected(i-1,j-2) = 1;
                    disp('down 1 , left 2')
                end
                if GoodPoints(i-1,j+2) == 1
                    Infected(i-1,j+2) = 1;
                    disp('down 1 , right 2')
                end
                if GoodPoints(i,j-2) == 1
                    Infected(i,j-2) = 1;
                    disp('left 2')
                end
                if GoodPoints(i,j+2) == 1
                    Infected(i,j+2) = 1;
                    disp('right 2')
                end
                if GoodPoints(i+1,j-2) == 1
                    Infected(i+1,j-2) = 1;
                    disp('up 1 , left 2')
                end
                if GoodPoints(i+1,j+2) == 1
                    Infected(i+1,j+2) = 1;
                    disp('up 1 , right 2')
                end
                if GoodPoints(i+2,j-2) == 1
                    Infected(i+2,j-2) = 1;
                    disp('up 2 , left 2')
                end
                if GoodPoints(i+2,j-1) == 1
                    Infected(i+2,j-1) = 1;
                    disp('up 2 , left 1')
                end
                if GoodPoints(i+2,j) == 1
                    Infected(i+2,j) = 1;
                    disp('up 2')
                end
                if GoodPoints(i+2,j+1) == 1
                    Infected(i+2,j+1) = 1;
                    disp('up 2 , right 1')
                end
                if GoodPoints(i+2,j+2) == 1
                    Infected(i+2,j+2) = 1;
                    disp('up 2 , right 2')
                end
            else
                % Else this point is already accounted for in the Infected
                % Matrix, move on
            end
    end
end

figure
title('test')
imgs = [G contrast_img]
PreContrastValOut = sprintf('Pre-Contrasting = %f trees.', num_True_Trees_pre)
PostContrastValOut = sprintf('Post-Contrasting = %f trees.', num_True_Trees_post)
annotation('textbox', [.1 .15 .1 .1],'String',PreContrastValOut,'FitBoxToText','on')
annotation('textbox', [.6 .15 .1 .1],'String',PostContrastValOut,'FitBoxToText','on')
montage(imgs)

end