% Define the transfer function
s = tf('s');
G = 10^3 / ((s+1)*(0.1*s+1)*(0.01*s+1));

% s-plane: Pole-Zero Plot
figure;
pzmap(G);
title('Pole-Zero Map (s-plane)');
grid on;

% af-plane: Nyquist Plot
figure;
nyquist(G);
title('Nyquist Plot (af-plane)');
grid on;
