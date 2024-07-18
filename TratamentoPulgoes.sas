DATA PULGAO;
INPUT TRAT$ REP PULG; 
DATALINES;

A 1 12345
B 2 23456
C 3 34567
D 4 45678
E 5 56789
F 6 67890
A 1 78901
B 2 89012
C 3 90123
D 4 12345
E 5 23456
F 6 34567
A 1 45678
B 2 56789
C 3 67890
D 4 78901
;




/* PROC GLM; - O PROC GLM DEFINE O MEU PROCEDIMENTO COMO UMA ANALISE DE VARIANCIA *
CLASS TRAT; - SERIA NOSSA VARIAVEL RESPOSTA
* MODEL PULG = TRAT - DEFINE;* - MODEL É DEFINIDIO PELA NOSSA VAR RESPOSTA E NOSSA VARIAVEL PARA VARIANCIA (MODELO ESTATISTICO)
* MEANS TRAT / TUKEY;* - CALCULA A MEDIA ENTRE NOSSA VARIAVEL DE TRATAMENTO FAZENDO SUA MEDIA PELO METODO DE TUKEY
*/
PROC GLM;
CLASS TRAT; 
MODEL PULG = TRAT;
MEANS TRAT / TUKEY;
RUN;