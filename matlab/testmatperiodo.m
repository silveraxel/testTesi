% 4 SETTIMANE, NON SONO MESI SPECIFICI

% Sequenza osservata e stati
seq1=[62, 63, 30, 30, 57, 64, 65,66, 55, 67, 68, 69, 70, 71,72, 73, 74, 75, 76, 1, 1,77, 78, 79, 80, 81, 82, 83];
seq2=[144, 145, 146, 1, 1, 1, 147,148, 149, 150, 151, 152, 1, 1,1, 153, 1, 154, 155, 156, 157,158, 1, 1, 159, 1, 1, 160];
%emissione seq=1 ==> emissione==0

states1=[ 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 2, 2, 2, 2, 2, 2, 2 ];
states2=[ 2, 2, 2, 1, 1, 1, 2, 2, 2, 2, 2, 2, 1, 1, 1, 2, 1, 2, 2, 2, 2, 2, 1, 1, 2, 1, 1, 2 ];
% 0 emissioni == stato 1%
% >0 emissioni == stato 2%
[trans, emis] = hmmestimate(seq1, states1);

% Visualizzazione della matrice di transizione
disp('Matrice di Transizione degli Stati:');
disp(trans);

% Visualizzazione della matrice di emissione
disp('Matrice di Emissione:');
disp(emis);


%Settimana creata nuova
len=7;
% creazione di 10 settimane
for i = 1:10
    [seq3,states3] = hmmgenerate(len,trans,emis);

    % Visualizzazione della sequenza
    disp(['Sequenza: ', num2str(i)]);
    disp(seq3);

    % Visualizzazione della matrice di emissione
    %disp(['States: ', num2str(i)]);
    %disp(states3);
end