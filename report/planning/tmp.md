[jpg, png, PDF, tiff]



1. componente: schermata di ricerca e recupero dati di uno specifico documento _CAI_ salvato nei database
   1. componente: schermata di visualizzazione metadati documento recuperato (se presente, altrimenti mostrare un messaggio)
   2. funzione: modifica manuale dei metadati, dalla schermata di visualizzazione, da parte del dipendente _Specifici_

- core
   - algoritmi di **OCR** per riconoscimento testo da PDF
   - algoritmi di **NLP** per interpretazione e strutturazione dati
   - gestione delle diverse variabilità dei documenti _CAI_

- testing
   - componente: script di test per _OCR_
   - componente: script di test per _NLP_
   - componente: script per calcolo e salvataggio delle accuratezze nel database




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



