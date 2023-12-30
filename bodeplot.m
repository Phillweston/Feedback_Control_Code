% Define the transfer function
s = tf('s');
G = 10^7 * (10^-4 * s + 1) / (s * (0.01 * s + 1) * (s^2 / 10^12 + 2 * 0.2 * s / 10^6 + 1));

% Generate the Bode plot
bode(G);
grid on;

% Optionally, set the frequency range
% bode(G, {1e-2, 1e8}); % Adjust the range as needed

% Add title and labels (optional)
title('Bode Plot of the Given Transfer Function');
xlabel('Frequency (rad/s)');
ylabel('Magnitude (dB) / Phase (deg)');
