% MATLAB script to plot Nyquist diagram for a system with a pure time delay

% Parameters
a0 = 1;       % Gain
tau = 1;      % Time delay in seconds

% Frequency range
omega = linspace(0, 100, 1000);  % Frequency range from 0 to 100 rad/s

% Calculating the frequency response
realPart = a0 * cos(-omega * tau);
imagPart = a0 * sin(-omega * tau);

% Nyquist plot
figure;
plot(realPart, imagPart);
xlabel('Real Part');
ylabel('Imaginary Part');
title('Nyquist Plot of the System with Time Delay');
axis equal;
grid on;

% Add a line to complete the semicircle for visual clarity
hold on;
theta = linspace(pi, 2*pi, 500);
plot(a0*cos(theta), a0*sin(theta), '--r');
hold off;
