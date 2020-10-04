[fName, pName] = uigetfile('sa_re_ga_ma.wav');
[sig, fs] = audioread( fName );
sound(sig, fs);

slow = resample(sig, 2, 1);
fast = resample(sig, 1, 2);

hold on
TotalTime = length(sig)./fs;
t = 0:TotalTime/(length(sig)):TotalTime-TotalTime/length(sig);
plot(t,sig)

TotalTime= length(fast)./fs;
t = 0:TotalTime/(length(fast)):TotalTime-TotalTime/length(fast);
plot(t, fast)

TotalTime = length(slow)./fs;
t = 0:TotalTime/(length(slow)):TotalTime-TotalTime/length(slow);
plot(t,slow)
hold off