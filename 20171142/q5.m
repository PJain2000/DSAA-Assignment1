[fName, pName] = uigetfile('sa_re_ga_ma.wav');
[sig, fs] = audioread( fName );

hold on
sig1 = smoothdata(sig,'movmean');
plot(sig)
plot(sig1)
hold off

hold on
sig2 = smoothdata(sig,'gaussian');
plot(sig)
plot(sig2)
hold off

hold on
sig3 = smoothdata(sig,'loess');
plot(sig)
plot(sig3)
hold off

hold on
sig4 = smoothdata(sig,'lowess');
plot(sig)
plot(sig4)
hold off

hold on
sig5 = smoothdata(sig,'movmedian');
plot(sig)
plot(sig5)
hold off

hold on
sig6 = smoothdata(sig,'rloess');
plot(sig)
plot(sig6)
hold off

hold on 
sig7 = smoothdata(sig,'rlowess');
plot(sig)
plot(sig7)
hold off

hold on
sig8 = smoothdata(sig,'sgolay');
plot(sig)
plot(sig8)
hold off