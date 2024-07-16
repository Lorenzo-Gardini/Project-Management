      ################################
   Controlli di tipo di dato: Verificare che il tipo di dato di ciascun metadato estratto corrisponda al tipo di dato previsto. Ad esempio, un numero di sinistro dovrebbe essere un valore numerico, mentre una data dovrebbe essere un valore di formato data/ora valido.
   Controlli di formato stringa: Per metadati che sono stringhe di testo, verificare che il formato della stringa corrisponda al formato previsto. Ad esempio, un nome e cognome dovrebbe essere formattato come "Nome Cognome", mentre un indirizzo dovrebbe essere formattato come "Via Nome Strada, Numero Civico, CAP Città".
   Controlli di lunghezza: Verificare che la lunghezza di ciascun metadato estratto sia all'interno di un intervallo di lunghezza valido. Ad esempio, un numero di telefono dovrebbe avere una lunghezza compresa tra 10 e 15 caratteri.
   #####################################
   
   #####################################
   Controlli di incrocio: Confrontare i valori di metadati estratti tra loro per identificare potenziali incongruenze. Ad esempio, la data del sinistro dovrebbe essere precedente alla data di denuncia del sinistro.
   Controlli di coerenza con basi di conoscenza: Confrontare i valori di metadati estratti con basi di conoscenza esterne, come codici postali o nomi di località, per verificarne la validità.
   Controlli di coerenza interna al documento: Analizzare il contenuto del documento CAI per identificare potenziali incongruenze tra i metadati estratti e le informazioni presenti nel testo.
######################################



[jpg, png, PDF, tiff]



1. componente: schermata di ricerca e recupero dati di uno specifico documento _CAI_ salvato nei database
   2. componente: schermata di visualizzazione metadati documento recuperato (se presente, altrimenti mostrare un messaggio)
   3. funzione: modifica manuale dei metadati, dalla schermata di visualizzazione, da parte del dipendente _Specifici_

- core
   - algoritmi di **OCR** per riconoscimento testo da PDF
   - algoritmi di **NLP** per interpretazione e strutturazione dati
   - gestione delle diverse variabilità dei documenti _CAI_

- testing
   - componente: script di test per _OCR_
   - componente: script di test per _NLP_
   - componente: script per calcolo e salvataggio delle accuratezze nel database


### Front-end

- aggiornamento portale web esistente
   1. funzione: invio al server del documento caricato dall'utente per triggerare il processo di ingestion
   2. componente: schermata di riepilogo dati estratti
   3. feature: indicazione, a lato di ciascun metadato, sull'accuratezza ottenuta usando icone colorate
   4. funzione: modifica lato utente dei metadati estratti in modo manuale
   5. funzione: pulsante per l'invio dei dati al server
   6. feature: _pupup_ per valutare il servizio 
   7. funzione: salvataggio risposta _pupup_ nel database

- nuovo portale web per dipendenti _Specifici_
   1. componente: schermata di ricerca e recupero dati di uno specifico documento _CAI_ salvato nei database
   2. componente: schermata di visualizzazione metadati documento recuperato (se presente, altrimenti mostrare un messaggio)
   3. funzione: modifica manuale dei metadati, dalla schermata di visualizzazione, da parte del dipendente _Specifici_

### Infrastruttura
- sviluppo microservizi
   1. componente: _Global Infrastructure_ in ambiente di test
   2. componente: _Lambda Function Start_ in ambiente di test
   3. componente: _Lambda Function Textract Proxy_ in ambiente di test
   4. componente: _Lambda Function OCR Reconstruction_ in ambiente di test
   5. componente: _Lambda Function Output Formatter_ in ambiente di test
   6. componente: _Step Function_ in ambiente di test
   - componente: _bucket S3_ in ambiente di test
   - componente: rilascio in ambiente di produzione di tutti i componenti

- permessi
   - componente: configurazione e testing _API Gateway_
   - componente: credenziali dell'utenza _IAM_ per l'accesso ai _bucket S3_ da perte di _Specifici_

- testing
   - componente: script di test dei componenti infrastrutturali
   - componente: script per calcolo tempistiche per i _Performance Test_
   - test: singoli microservizi

################

- nella pagina di **riepilogo estrazione** si deve mostrare una icona segnaletica rossa per i metadati molto incerti, una arancione/gialla per i metadati con qualche incertezza e una spunta verde per i metadati più sicuri


- l'**accuratezza** di ciascun metadato di ciascun documento viene salvata in un piccolo **database "ad hoc"** gestito da _HyperFlow_ in modo da poter effettuare analisi globali e specifiche sia per singolo documento che per metadato


- tutti i **sondaggi/feedback**, durante lo sviluppo, verranno raccolti sia tramite segnalazioni dirette, sulla piattaforma condivisa _Jira_ in un'apposite sezione, che sia tramite specifici _Google Form_ anonimi. Per i feeback dei clienti viene creato un _popup_ al termine del caricamento del documento, tramite portale web, che chiede di selezionare come il cliente si è trovato con l'utilizzo del nuovo sistema. Il risultato viene poi salvato in un database di proprietà _Specifici_
- il programma di **formazione** dei dipendenti _Specifici_ dura 4 ore e comprende spiegazione e domande. Le date sono da accordare con _Specifici_ 
- il sistema di feeback lato cliente deve essere realizzato mostrato dopo il caricamento di ciascun documento _CAI_ con un semplice _popup_. Le risposte vengono registrate in un database _Specifici_ **ad "hoc"** e correlate con un identificativo al documento caricato

#######################################

### Logica
- conversione formato input in formato png
- validazione qualità immagine
- estrazione automatica dei metadati dal documento
   - implementare algoritmi di estrazione
   - validazione del formato
      - calcolo status sul formato
   - validazione della coerenza
      - calcolo status sulla coerenza
- salvataggio sui database temporanei dei metadati estratti, dell'accuratezza e degli status ottenuti

### Infrastruttura
- creazione database
- sviluppo microservizi
- sviluppo flusso d'_ingestion_ automatico
- gestione dei permessi
- validazione infrastruttura
   - _Acceptance tests_
   - _Validation tests_
   - _Stress tests_

### Portali Web

- portale _ingestion_ automatica
   - mock-up portale
   - caricamento in modo semplice dei documenti in vari formati
   - avvio automatio del processo di estrazione e validazione dei metadati per i documenti caricati
   - feedback sullo stato di elaborazione dei documenti
   - indicatori visivi e messaggi per evidenziare i metadati incerti o potenzialmente errati 
   - la possibilità di modificare o correggere i metadati se necessario
   - salvataggio sui database permanenti dei metadati, eventualmente modificati, convalidati dall'utente
   - visualizzazione _popup_ per il feedback utente sul nuovo sistema 
   - salvataggio sul database del feedbkack 
   
- portale interno
   - mock-up portale
   - funzionalità di ricerca per trovare rapidamente i documenti desiderati
   - funzionalità per visualizzare i metadati
   - funzionalità per modificare i metadati
   - salvataggio sui database permanenti dei metadati, eventualmente modificati


### Documentazione
- documentazione del codice
   - documentazione completa del codice sviluppato utilizzando _Sphinx_
   - esempi di utilizzo del codice.
- guida per l'utente su _Confluence_
   - descrizione delle funzionalità di ogni modulo di codice
   - spiegazione delle scelte di design e le implementazioni adottate
   - guide per l'utente per i portali web di ingestione automatica e del portale interno
      - screenshot e illustrazioni per la comprensione


## Milestones
Sono state decise le seguenti _milestones_ che devono essere raggiunte nel seguente ordine:

| Ordine | Oggetto                      | Ambiente   | Nota aggiuntiva                                                                                           |
|:------:|:----------------------------:|:----------:|-----------------------------------------------------------------------------------------------------------|
| 1      | Sviluppo logica              | Test       | lo sviluppo comprende test sul _batch_ di **train**                                                       |
| 2      | Superamento Validation Test  | Test       | test sul _batch_ di **validation**                                                                        |
| 3      | Sviluppo infrastruttura      | Test       | su AWS industrializzando la parte di logica                                                               |
| 3*     | Sviluppo e test portali web  | Test       | sviluppo portale nuovo e cambio del precedente                                                            | 
| 4      | Superamento Performance test | Test       | test sulle performance di tempo del sistema                                                               |
| 4**    | Superamento test portali web | Produzione | verifica del funzionamento dei portali web in ambiente di produzione                                      |
| 5      | Superamento Test E2E         | Produzione | verifica del funzionamento del sistema in ambiente di produzione                                          |
| 6      | Superamento Stress Test E2E  | Produzione | verifica del funzionamento del sistema con **utilizzo intensivo**                                         |
| 7      | Superamento Live Test        | Produzione | analisi effettuate con **ricorrenza settimanale** sui documenti raccolti                                  |

\* lo sviluppo dei portali web può iniziare parallallelamente a quello dell'infrastruttura, ma ne è dipendente
\** i test per i portali web possono essere effettuati parallelamente ai _Performance test_