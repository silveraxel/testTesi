
% Sequenza osservata e stati
%seq1=[2, 3, 4, 4, 5, 6, 7,8, 9, 10, 11, 12, 13, 14,15, 16, 17, 18, 19, 1, 1, 20, 21, 22, 23, 24, 25, 26];
%[62, 63, 30, 30, 57, 64, 65,66, 55, 67, 68, 69, 70, 71,72, 73, 74, 75, 76, 1, 1, 77, 78, 79, 80, 81, 82, 83];
seq1=[2, 3, 4, 1, 1, 1, 5,6, 7, 8, 9, 10, 1, 1,1, 11, 1, 12, 13, 14, 15,16, 1, 1, 17, 1, 1, 18];
%[144, 145, 146, 1, 1, 1, 147,148, 149, 150, 151, 152, 1, 1,1, 153, 1, 154, 155, 156, 157,158, 1, 1, 159, 1, 1, 160];
%emissione seq=1 ==> emissione==0

states1=[2, 2, 2, 1, 1, 1, 2, 2, 2, 2, 2, 2, 1, 1,1, 2, 1, 2, 2, 2, 2, 2, 1, 1, 2, 1, 1, 2];
% 0 emissioni == stato 1%
% >0 emissioni == stato 2%
[trans, emis] = hmmestimate(seq1, states1);

% Visualizzazione della matrice di transizione
disp('Matrice di Transizione degli Stati:');
disp(trans);

% Visualizzazione della matrice di emissione
disp('Matrice di Emissione:');
disp(emis);


[seq3,states3] = hmmgenerate(7,trans,emis);
disp('Sequenza: ');
disp(seq3);
