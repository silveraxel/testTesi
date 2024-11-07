% Definire l'array originale
original_array =  [183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 183, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209,210, 211, 212, 213, 214, 211, 215, 216, 1, 1, 1, 1, 1, 1];



% Inizializza il nuovo array
new_array = original_array;  % Crea una copia dell'array originale
unique_values = unique(original_array);  % Trova i valori unici
mapping = containers.Map('KeyType', 'double', 'ValueType', 'double');  % Mappa per il nuovo valore
new_value = 2;  % Inizia da 2 per la sostituzione

% Sostituisci i valori unici
for i = 1:length(unique_values)
    % Mappa il valore unico al nuovo valore
    if ~ismember(unique_values(i), [1, 10])  % Ignora 1 e 10 se non devono essere trasformati
        mapping(unique_values(i)) = new_value;  % Mappa il valore unico al nuovo valore
        new_value = new_value + 1;  % Incrementa il nuovo valore per il prossimo unico
    else
        mapping(unique_values(i)) = unique_values(i);  % Mantiene il valore originale per 1 e 10
    end
end

% Applica la mappatura a new_array
for i = 1:length(new_array)
    new_array(i) = mapping(new_array(i));  % Trasforma i valori secondo la mappa
end

% Visualizza l'array trasformato con virgole
fprintf('%d', new_array(1));  % Stampa il primo elemento senza virgola
for i = 2:length(new_array)  % Inizia dalla seconda posizione
    fprintf(', %d', new_array(i));  % Stampa gli altri elementi preceduti da una virgola
end
fprintf('\n');  % Vai a capo alla fine della stampa
