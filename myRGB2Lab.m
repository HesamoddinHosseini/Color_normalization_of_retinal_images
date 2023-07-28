function [output] = myRGB2Lab(RGB_img)

[img_row_size, img_col_size] = size(RGB_img(:,:,1));

R = RGB_img(:,:,1);
G = RGB_img(:,:,2);
B = RGB_img(:,:,3);

X = zeros(img_row_size, img_col_size);
Y = zeros(img_row_size, img_col_size);
Z = zeros(img_row_size, img_col_size);

M1 = [0.4124, 0.3576, 0.1805;
      0.2126, 0.7152, 0.0722;
      0.0193, 0.1192, 0.9505];
  
for row = 1:img_row_size
    for col = 1:img_col_size
        
        result =  M1 * [  R(row, col); G(row, col); B(row, col)];
        X(row, col) = result(1);
        Y(row, col) = result(2);
        Z(row, col) = result(3);
        
    end
end

LL = zeros(img_row_size, img_col_size);
M = zeros(img_row_size, img_col_size);
S = zeros(img_row_size, img_col_size);

M1 = [0.3897, 0.6890, -0.0787;
      -0.2298, 1.1834, 0.0464;
      0.0000, 0.0000, 1.0000];
  
for row = 1:img_row_size
    for col = 1:img_col_size
        
        result =  M1 * [X(row, col); Y(row, col); Z(row, col)];
        LL(row, col) = result(1);
        M(row, col) = result(2);
        S(row, col) = result(3);
        
    end
end

M1 = [1, 1, 1;
      1, 1, -2;
      1, -1, 0];

L = zeros(img_row_size, img_col_size);
a = zeros(img_row_size, img_col_size);
b = zeros(img_row_size, img_col_size);
  
for row = 1:img_row_size
    for col = 1:img_col_size
        
        result = diag([1/sqrt(3),1/sqrt(6),1/sqrt(2)]) * M1 * [LL(row, col) ; M(row, col); S(row, col)];
        
        L(row, col) = result(1);
        a(row, col) = result(2);
        b(row, col) = result(3);
        
    end
end

output = cat(3,L,a,b);

end