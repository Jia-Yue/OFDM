% This function converts a grey image into binary and sends for
% transmission
function data_generated=image_data_generator()
 path=pwd;
 change=cd(path);
 num=input('Choose figure: 1 for single frequency, 2 for multi frequency, 3 for complex image :');
 if (num == 1)
     imdata=imread('\Checkered_box.jpg');
 end
 if (num == 2)
     imdata=imread('\multi_frequency.png');
 end
 if (num == 3)
     imdata=imread('\person.png');
 end
 imdata=imdata(:,:,1);
 disp('Image before transmitting');
 pause
 figure;
 title('Image before transmitting');
 %imshow(imdata)
 imdata_resized=imresize(imdata,[400 400]);
 imdata_resized=im2double(imdata_resized);
 imdata_resized=fix(imdata_resized);
 data_generated=reshape(imdata_resized',1,160000);
 imshow(imdata_resized)
end
     
 