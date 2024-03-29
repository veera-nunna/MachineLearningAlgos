function MFCCs=mfccReading(songname)

Tw = 30;           % analysis frame duration (ms)
          Ts = 10;           % analysis frame shift (ms)
           alpha = 0.97;      % preemphasis coefficient
           R = [ 300 3700 ];  % frequency range to consider
           M = 20;            % number of filterbank channels 
           C = 13;            % number of cepstral coefficients
           L = 22;            % cepstral sine lifter parameter
       
%           % hamming window (see Eq. (5.2) on p.73 of [1])
           %hamming = @(N)(0.54-0.46*cos(2*pi*[0:N-1].'/(N-1)));
%       
%           % Read speech samples, sampling rate and precision from file
           [ speech, fs ] = audioread(songname);
%       
%           % Feature extraction (feature vectors as columns)
           [ MFCCs, FBEs, frames ] = mfcc( speech, fs, Tw, Ts, alpha, @hamming, R, M, C, L );
           
          
           