%pcm
%analog signal(sinusoidal)
maximum_frequency=2; %maximum frequency of the input signal

sampling_frequency=20*maximum_frequency; %Nyquist sampling rate

time_period=0:1/sampling_frequency:1;

amplitude=2;

sinusoidal_signal=amplitude*sin(2*3.1416*maximum_frequency*time_period);

%level shifting
level_shifting_output=sinusoidal_signal+amplitude;

%quantization
quantizer_output=round(level_shifting_output);

%decimal to binary
encoder_output=de2bi(quantizer_output,'left-msb');

%pcm receiver
decoder_output=bi2de(encoder_output,'left-msb');

%shifting the amplitude level to the orginal value
reconstructed_signal=decoder_output-amplitude;

%ploting
plot(time_period,sinusoidal_signal,'g');
hold on
plot(time_period,reconstructed_signal,'b');
xlabel('time');
ylabel('amplitude');
legend('orginal signal','reconstructed signal');






