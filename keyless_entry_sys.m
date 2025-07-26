% Time vector: 0 to 15 seconds, 0.1s step
t = 0:0.1:15;

% Simulate Key Detected from 2s to 10s
key_signal = double(t >= 2 & t <= 10);
Key_Detected = timeseries(key_signal, t);

% Simulate Auth Success from 4s to 10s
auth_signal = double(t >= 4 & t <= 10);
Auth_Success = timeseries(auth_signal, t);