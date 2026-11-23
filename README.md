# Lecture 02 – Sampling and Aliasing

## Objective

The objective of this investigation was to study how different sampling frequencies affect the representation of a 10 Hz sine wave. MATLAB was used to generate the original signal, sample it at different frequencies, and observe aliasing.

## Nyquist Analysis

The original signal frequency is 10 Hz.

According to the Nyquist Sampling Theorem:

Minimum sampling frequency = 2 × Maximum signal frequency

= 2 × 10

= 20 Hz

Therefore, the minimum Nyquist sampling frequency is 20 Hz.

The frequencies 20 Hz, 25 Hz, 50 Hz and 100 Hz satisfy the Nyquist criterion. The 15 Hz sampling frequency does not satisfy it.

Sampling exactly at the Nyquist rate is not recommended in practical systems. It provides no safety margin and can produce an unreliable representation depending on the signal phase.

## Results

- **15 Hz:** The sampling frequency is below the Nyquist rate. Aliasing occurs, and the signal is not represented correctly.
- **20 Hz:** This is exactly the Nyquist rate. In this experiment, the sample points fall at the zero crossings, so the sampled values are zero.
- **25 Hz:** The signal is sampled above the Nyquist rate, but the representation is still limited.
- **50 Hz:** The sampled points represent the original signal more accurately.
- **100 Hz:** The sampled points closely follow the original signal.

## Aliasing Discussion

Aliasing occurs when the sampling frequency is too low to represent the highest frequency in a signal. In this experiment, aliasing occurs at 15 Hz because it is below the Nyquist frequency of 20 Hz. The sampled signal can then appear to have a different frequency.

I recommend 50 Hz for this example. It provides five samples per cycle and a reasonable balance between signal accuracy and processing requirements. It also provides a safety margin above the theoretical minimum. A practical system should also use an anti-aliasing filter before sampling.

## Engineering Recommendation

I recommend a sampling frequency of 50 Hz for this 10 Hz example. It gives a better representation than 20 Hz and 25 Hz without requiring as much processing as 100 Hz.

For a real industrial vibration monitoring system, the sampling frequency must be selected based on the highest vibration frequency that needs to be detected, with suitable additional margin and anti-aliasing filtering.

## AI Usage

- **AI Tool Used:** ChatGPT
- **Prompt(s):** Explain aliasing and the Nyquist Sampling Theorem. Help generate MATLAB code to sample a 10 Hz sine wave at 15, 20, 25, 50 and 100 Hz.
- **Summary of AI Response:** ChatGPT explained the Nyquist criterion and helped generate MATLAB code for signal generation, sampling and plotting.
- **What I Modified:** I ran the code in MATLAB and checked the generated plots and sampling results.
- **How I Verified the Results:** I checked the sample frequencies, compared the sampled points with the original signal, and verified the Nyquist calculation in MATLAB.
