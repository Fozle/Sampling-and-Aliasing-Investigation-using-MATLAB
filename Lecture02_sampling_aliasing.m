
clear;
close all;
clc;

%% Task 1: Create Original Signal

f = 10;                  % Signal frequency (Hz)
duration = 1;             % Duration (seconds)
dt = 0.0001;              % Small time step
t = 0:dt:duration;
x = sin(2*pi*f*t);

figure(1);
plot(t, x, 'b', 'LineWidth', 1.5);
title('Original 10 Hz Sine Wave');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;
legend('Original signal');

saveas(gcf, 'original_signal.png');

%% Task 2: Investigate Sampling Frequencies

samplingFrequencies = [15 20 25 50 100];

for k = 1:length(samplingFrequencies)

    Fs = samplingFrequencies(k);

    % Generate sampled time values
    ts = 0:1/Fs:duration-1/Fs;

    % Sample the original signal
    xs = sin(2*pi*f*ts);

    % Plot continuous signal and sampled points
    figure(k+1);

    plot(t, x, 'b', 'LineWidth', 1.2);
    hold on;

    stem(ts, xs, 'r', 'filled', 'LineWidth', 1.2);

    title(['Sampling Frequency = ', num2str(Fs), ' Hz']);
    xlabel('Time (seconds)');
    ylabel('Amplitude');
    legend('Original signal', 'Sampled points');
    grid on;
    hold off;

    % Save each sampling figure
    filename = ['sampling_', num2str(Fs), 'Hz.png'];
    saveas(gcf, filename);

end

%% Task 3: Nyquist Analysis

fmax = 10;
nyquistRate = 2*fmax;

fprintf('\nNYQUIST ANALYSIS\n');
fprintf('Maximum signal frequency: %d Hz\n', fmax);
fprintf('Minimum Nyquist sampling frequency: %d Hz\n', nyquistRate);

fprintf('\nSampling frequency results:\n');

for k = 1:length(samplingFrequencies)

    Fs = samplingFrequencies(k);

    if Fs >= nyquistRate
        fprintf('%d Hz: Nyquist criterion satisfied\n', Fs);
    else
        fprintf('%d Hz: Nyquist criterion NOT satisfied\n', Fs);
    end

end

fprintf('\nAll figures saved successfully.\n');
