filename = 'Logs_opt_test10_23_09-59-37.csv';
Table = readtable(filename);


Time = Table{:,1};
x = Table{:,2};
y = Table{:,3};
z = Table{:,4};

v_x = Table{:,9};
v_y = Table{:,10};

deltaX_sum = Table{:, 7};
deltaY_sum = Table{:, 8};

L = size(Time,1);
samplingtime = Time(end,1) - Time(2,1);
T = samplingtime / L;
Fs = 1/T
 
t = (0:L-1)*T;

figure(1);
hold on
plot(t,x(1:L))
plot(t,y(1:L))
hold off

figure(2);
hold on
plot(t,v_x(1:L))
plot(t,v_y(1:L))
hold off

figure(3);
plot(x, y)
pbaspect([1 1 1])

figure(4);
plot(deltaX_sum, deltaY_sum)
pbaspect([1 1 1])