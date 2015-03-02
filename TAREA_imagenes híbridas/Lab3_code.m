%%%%SET UP%%%%%
% Load images
A = imread('1.jpg');
C = imread('2.jpg');

% Make images smaller
A = imresize(A,.25);
C = imresize(C,.25);

% Tell me new size
size(A)
size(C)

% Convert to gray scale for optimal effect
A = rgb2gray(A);
C = rgb2gray(C);
 


%%%%%FILTERING%%%%% 
% Plot Abierto resized (smallA)
subplot(3,2,1)
imshow(A)
axis image;
axis off;

% Plot Cerrado resized (smallC)
subplot(3,2,2)
imshow(C)
axis image;
axis off;

% Apply low pass filter to A and plot
subplot(3,2,3)
A_LP = imfilter(A,fspecial('gaussian',[9 9], 7)); %create low pass filter
imshow(A_LP)
axis image;
axis off;
 
% Apply high pass filter to C and plot
subplot(3,2,4)
C_LP = imfilter(C,fspecial('Gaussian',[500 500], 18)); %create low pass filter
C_HP = double(C)-double(C_LP); %create high pass filter by subtraction
C_HP = (C_HP + 255)./2;
C_HP = uint8(C_HP);
imshow(C_HP)  % Laplacian high pass filtered image
axis image;
axis off;
 
% Create Hybrid image (imH = A + C w/filters) and plot
imH = .4*A_LP+.4*C_HP;
subplot(3,2,5.5)
imshow(imH) %normal hybrid
axis image;
axis off;




%%%%%DISPLAY RESULTS%%%%%
% Make image pyramid
imH1=impyramid (imH,'expand')
imH2=impyramid (imH1,'expand')
imH3=impyramid (imH2,'expand')


%Display image pyramid
figure, H= subplot(1,4,4);
imshow(imH)

H1= subplot(1,4,3);
figure,imshow(imH1)

H2= subplot(1,4,2);
figure,imshow(imH2)

linkaxes([H,H1,H2])
axis image;
axis off;
 
 


 
