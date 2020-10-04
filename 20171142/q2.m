[fName, pName] = uigetfile('sa_re_ga_ma.wav');
[sig, fs] = audioread( fName );

// rec = audiorecorder(48000, 24, 1);
// recordblocking(rec, 5)
// voice = getaudiodata(rec);
// rec1 = voice(:, 1)';

% Part1
sound(sig, fs);

%Part2
fs1= 24000;
fs2= 16000;
fs3= 8000;
fs4= 4000;

s1 = resample(sig, fs1, fs);
s2 = resample(sig, fs2, fs);
s3 = resample(sig, fs3, fs);
s4 = resample(sig, fs4, fs);

sound(sig, fs1);
sound(sig, fs2);
sound(sig, fs3);
sound(sig, fs4);

%Part3

[fName1, pName1] = uigetfile('WIDE_HALL.wav');
[sig1, fs1] = audioread( fName1 );
sound(sig1, fs1);

[fName2, pName2] = uigetfile('SMALL_CHURCH.wav');
[sig2, fs2] = audioread( fName2 );
sound(sig2, fs2);

[fName3, pName3] = uigetfile('FLANGERSPACE.wav');
[sig3, fs3] = audioread( fName3 );
sound(sig3, fs3);

sig4 = conv2(sig, sig1);
sound(sig4, fs)

sig5 = conv2(sig, sig2);
sound(sig5, fs)

sig6 = conv2(sig, sig3);
sound(sig6, fs)

