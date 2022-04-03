

clc; clear; close all;
%%Create Data Stores
% train = imageDatastore('stage_2_train_images', 'IncludeSubfolders', true)

data = dir('stage_2_train_images')
(data)

%%Convert Image from .dcm to .jpg
d1 = "stage_2_train_images/Positive/";
save_to = "stage_2_train_images/Positive_converted/"
files = dir(fullfile(d1));
files([files.isdir]) = [];
n_files = length(files);

for i = 1:2
    filename = fullfile(d1, files(i).name)
%     name = file.name
%     if strcmp(name,'.')
%         dest = strcat(folder, name)
%     end
    fprintf(filename)
    img = dicomread(filename)
    img = im2gray(img)
    img = imadjust(img)
    
    size = floor(length(img)/30)
    SE = strel('disk', size)
    edge1 = edge(img, 'Canny')
    imshow(edge1)
    dialated = imclose(edge1, SE)
%     imshow(dialated)
    
    h = imfill(dialated, 'holes')
    torso = bwlabeln(h)
    
    
end
% img = dicomread("0a7b0cc8-af04-4d2c-9267-6fdfb05f48f2.dcm");
% imshow(img) 

% img = im2gray(img);
% img = imbinarize(img, 'adaptive')