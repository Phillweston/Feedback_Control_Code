% Define the s variable
s = tf('s');

% Parameters for the bandpass amplifier
f1 = 100; % lower cutoff frequency (Hz)
f2 = 1000; % upper cutoff frequency (Hz)
w1 = 2*pi*f1; % lower cutoff angular frequency (rad/s)
w2 = 2*pi*f2; % upper cutoff angular frequency (rad/s)
bandpass_amp = (s/w1) / (s^2 + s*(1/w1 + 1/w2) + (w1*w2));

% Parameters for the notch filter
f0 = 500; % notch frequency (Hz)
bw = 100; % bandwidth of the notch (Hz)
w0 = 2*pi*f0; % notch angular frequency (rad/s)
wb = 2*pi*bw; % bandwidth angular frequency (rad/s)
notch_filter = (s^2 + w0^2) / (s^2 + s*wb + w0^2);

% Plot the Bode plot for the bandpass amplifier
figure;
bode(bandpass_amp);
title('Bode Plot of Bandpass Amplifier');

% Plot the Bode plot for the notch filter
figure;
bode(notch_filter);
title('Bode Plot of Notch Filter');
