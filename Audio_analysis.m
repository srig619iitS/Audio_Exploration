clc;
close all;
clear all;

f = 0.8
n = 6
a = fir1(n,f,'high'); % fir high pass filter
b = fir1(n,f,'low'); % fir low pass filter
[y, fs] = audioread('file_example_WAV_10MG.wav'); % load audio file

o = filter(a,1,y); % passing audio to designed high pass filter
p = filter(b,1,o); % passing o to low pass filter
fvtool(p,1);       % use to display designed fir filter
subplot(2,1,1);
plot(y)            % original signal y
subplot(2,1,2);
plot(p)            % filtered output



%sound(y,fs);