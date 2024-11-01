
% PRIMO PERIODO
% 2019-04-22
%['CFMFLH6_S0', 'CHMHLH9_M1b', 'CAMALA1M_S0', 'CAMALA1M_S0', 'CDMDLE7_S2c', 'CHMGLH7_S2c', 'CCMCLD7_S2c']
%[12493. 32722.   753.   870.  7962. 16808.  6170.]
%2019-04-29
%['CCMCLD2MM_P1f', 'CAMALA2PP_S0', 'CHMHLH6_S1a', 'CCMBLC4_S0', 'CDMCLD4_M1c', 'CFMDLF6_S2f', 'CCMBLC2PL_S0']
%[ 5314.   217. 41191.  4857.  6009.  9599.  4976.]
%2019-05-06
%['CDMCLE6_S2a', 'CDMCLD3MPM_S0', 'CEMDLE4_S2a', 'CCMCLD4_S2a', 'CCMCLD2MP_P1f', '0', '0']
%[7087. 5861. 8221. 5312. 5602.    0.    0.]
%2019-05-13
%['CAMALA3PPP_S2a', 'CDMCLE5_S1f', 'CEMDLF4_S2f', 'CDMCLD1L_S0', 'CDMCLD4_S2f', 'CHMHLH6_S2c', 'CCMCLD9_S2c']
%[  108.  6994.  9478.  6191.  6511. 21086.  5247.]

seqq3=[2, 3, 4, 5, 6, 7, 8, 10, 11, 12, 13, 14, 15, 9, 16, 17, 18, 19, 20, 1, 21, 22, 23, 24, 25, 26, 27, 28];
statess3=[2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2];

seq2=[2, 3, 4, 5, 6, 1, 1, 1, 7, 1, 8, 9, 10, 11, 12, 1, 1, 13, 1, 1, 14, 1, 1, 1, 15, 16, 17, 18];
states2=[2, 2, 2, 2, 2, 1, 1, 1, 2, 1, 2, 2, 2, 2, 2, 1, 1, 2, 1, 1, 2, 1, 1, 1, 2, 2, 2, 2];

seq1=[2, 3, 4, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 1, 1, 20, 21, 22, 23, 24, 25, 26];
states1=[2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 2, 2, 2, 2, 2, 2, 2];

% 0 emissioni == stato 1%
% >0 emissioni == stato 2%
[trans, emis] = hmmestimate(seqq3, statess3);

% Visualizzazione della matrice di transizione
disp('Matrice di Transizione degli Stati:');
disp(trans);

% Visualizzazione della matrice di emissione
disp('Matrice di Emissione:');
disp(emis);


[seq3,states3] = hmmgenerate(7,trans,emis);
disp('Sequenza: ');
disp(seq3);
