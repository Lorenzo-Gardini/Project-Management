
# Work Breakdown Structure (WBS)

N.B. ogni sviluppo di codice segue l'approccio TDD e di logging automatico a più livelli.

1. **Logica**
   - gestione formato
     - 1.1 sviluppo modulo di conversione formato in png
   - controllo risoluzione
     - 1.2 viluppo modulo di controllo risoluzione
   - estrazione automatica dei metadati dal documento
     - 1.3 sviluppo modulo preprocessing immagine
     - 1.4 definizione metadati da estrarre
     - 1.5 sviluppo modulo chiamata Textract
     - 1.6 sviluppo modulo OCR reconstruction
     - 1.7 sviluppo modulo chiamata modello NER
     - 1.8 sviluppo modulo di post-processing
     - 1.9 sviluppo modulo generazione status metadati
   
2. **Infrastruttura**
   - creazione database
     - 2.1 creazione bucket S3 per i documenti caricati dai clienti
     - 2.2 creazione database Aurora (pre-validazione, post-validazione e per i feedback dei clienti)
   - sviluppo microservizi
     - 2.3 creazione Lambda Function Start
     - 2.4 creazione Lambda Function Preprocessing
     - 2.5 creazione Lambda Function Textract Proxy
     - 2.6 creazione Lambda Function OCR Reconstruction
     - 2.7 caricamento modello su Sagemaker
     - 2.8 creazione Lambda Function CAI NER
     - 2.9 creazione Lambda Function Preprocessing
     - 2.10 creazione Lambda Function Status Generator
     - 2.11 creazione Lambda Function Output Generator
   - sviluppo flusso d'ingestion automatico
     - 2.12 creazione Step Function 
   - 2.13 validazione infrastruttura ambiente di test
   - 2.14 rilascio in produzione
   - 2.15 validazione infrastruttura ambiente di produzione

3. **Portali Web**
   - portale ingestion automatica
     - 3.1 aggiornamento portale vecchio (trigger ingestion)
     - 3.2 creazione mock-ups pagine 
     - 3.3 validazione mock-ups con stakeholder
     - 3.4 creazione pagina visualizzazione metadati e status estratti
     - 3.5 sviluppo modulo connessione e salvataggio database post-validazione
     - 3.6 Funzione di modifica e funzione di conferma dei metadati estratti
     - 3.7 creazione pagina validazione confermata con popup per il feedback clienti
     - 3.8 sviluppo modulo connessione e salvataggio database feedback clienti
     - 3.9 funzione di salvataggio del feedback utente
     - 3.10 creazione pagina ricerca documento
     - 3.11 sviluppo modulo connessione e ricerca database post-validazione
     - 3.12 funzione di ricerca documento nel database
   -  portale interno
      - 3.2 creazione mock-ups pagine 
      - 3.3 validazione mock-ups con stakeholder
      - 3.13 creazione pagina modifica documento dipendente Specifici
      - 3.14 riutilizzo modulo connessione e salvataggio database post-validazione
      - 3.15 funzione di modifica e funzione di conferma dei metadati estratti
   - 3.16 validazione portali web ambiente di test
   - 3.17 rilascio in produzione
   - 3.18 validazione infrastruttura ambiente di produzione
   
4. **Documentazione**
   - documentazione del codice
     - 4.1 redazione documentazione modulo di conversione formato
     - 4.2 redazione documentazione modulo di controllo risoluzione
     - 4.3 redazione documentazione modulo di preprocessing
     - 4.4 redazione documentazione modulo chiamata Textract
     - 4.5 redazione documentazione modulo  OCR reconstruction
     - 4.6 redazione documentazione modulo chiamata modello NER
     - 4.7 redazione documentazione modulo di post-processing
     - 4.8 redazione documentazione modulo generazione status metadati
   
   - guida per l'utente su Confluence
     - 4.9 scrittura guida
     - 4.10 revisione e aggiornamento contenuti
     - 4.11 pubblicazione guida su Confluence
     

5. **Formazione**
   - 5.1 Selezione formatori interni
   - 5.2 Definizione modalità  di formazione (in presenza,  online)
   - 5.3 Sviluppo materiali didattici
   - 5.4 Pianificazione calendario formativo e invio comunicazioni ai partecipanti
   - 5.5 Esecuzione formazione

