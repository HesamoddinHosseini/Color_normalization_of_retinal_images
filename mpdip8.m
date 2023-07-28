close all;
clear;

rgb_target_img = imread('D:/Im281-1.tifz');
[img_row_size, img_col_size] = size(rgb_target_img(:,:,1));
rgb_target_img = im2double(rgb_target_img);
Lab_target_img = myRGB2Lab(rgb_target_img);

rgb_source_img = imread('D:/Im288-1.tif');
rgb_source_img = im2double(rgb_source_img);
Lab_source_img = myRGB2Lab(rgb_source_img);

Lab_result_img = zeros(img_row_size, img_col_size, 3);

Lab_target_img_a = Lab_target_img(:,:,2);
Lab_target_img_b = Lab_target_img(:,:,3);

meu_Lab_target_img_a = mean(Lab_target_img_a(:));
meu_Lab_target_img_b = mean(Lab_target_img_b(:));

Lab_source_img_a = Lab_source_img(:,:,2);
Lab_source_img_b = Lab_source_img(:,:,3);

meu_Lab_source_img_a = mean(Lab_source_img_a(:));
meu_Lab_source_img_b = mean(Lab_source_img_b(:));

sigma_a = var(Lab_target_img_a(:))/var(Lab_source_img_a(:));
sigma_b = var(Lab_target_img_b(:))/var(Lab_source_img_b(:));

for row = 1 : img_row_size
  for col = 1 : img_col_size
    Lab_result_img(row,col,2) = (sigma_a * (Lab_source_img_a(row,col) - meu_Lab_source_img_a)) + meu_Lab_target_img_a;
   end
end

for row = 1 : img_row_size
  for col = 1 : img_col_size
    Lab_result_img(row,col,3) = (sigma_b * (Lab_source_img_b(row,col) - meu_Lab_source_img_b)) + meu_Lab_target_img_b;
   end
end

Lab_result_img(:,:,1) = Lab_source_img(:,:,1);

rgb_result_img = myLab2RGB(Lab_result_img);

figure;
subplot(1,3,1);
imshow(rgb_target_img, []);
title('target');
subplot(1,3,2);
imshow(rgb_result_img, []);
title('result');
subplot(1,3,3);
imshow(rgb_source_img, []);
title('source');