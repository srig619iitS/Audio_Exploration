t = 0:(0.5/pi):5
x = [1,4,9]
y = [3,9,81]
z = [9,18,27]
plot3(x,y,z,'rs');
grid on
xlabel('selection')
ylabel('change')
zlabel('Overall')
axis([0,12,-4,90,0,30])
title('Changes in selection')

figure;
bar(x,z)

figure;
pie([x,y,z])

Y = magic(4)