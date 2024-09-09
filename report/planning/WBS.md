
<p style="text-align: right;">
  <img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/hyperflow_logo.png?raw=true" alt="Logo" style="width: 150px;"/>
</p>

# Work Breakdown Structure (WBS)

1. **Logica**
  - Controllo risoluzione
    - 1.1 Sviluppo modulo di controllo risoluzione
  - Estrazione automatica dei metadati dal documento
    - 1.2 Sviluppo modulo preprocessing immagine
    - 1.3 Definizione metadati da estrarre
    - 1.4 Sviluppo modulo chiamata Textract
    - 1.5 Sviluppo modulo OCR Reconstruction
    - 1.6 Sviluppo modulo chiamata modello NER
    - 1.7 Sviluppo modulo di post-processing
    - 1.8 Sviluppo modulo generazione status metadati

2. **Infrastruttura**
  - Creazione database e funzioni
    - 2.1 Creazione bucket S3
    - 2.2 Creazione database Aurora (pre-validazione, post-validazione e per i feedback dei clienti)
  - Sviluppo microservizi
    - 2.3 Creazione Lambda Function Start
    - 2.4 Creazione Lambda Function Preprocessing
    - 2.5 Creazione Lambda Function Textract Proxy
    - 2.6 Creazione Lambda Function OCR Reconstruction
    - 2.7 Caricamento modello su SageMaker
    - 2.8 Creazione Lambda Function CAI NER
    - 2.9 Creazione Lambda Function Preprocessing
    - 2.10 Creazione Lambda Function Status Generator
    - 2.11 Creazione Lambda Function Output Generator
  - Sviluppo flusso d'ingestion automatico
    - 2.12 Creazione Step Function
  - 2.14 Rilascio in produzione

3. **Portali Web**
  - Portale ingestion automatica
    - 3.1 Aggiornamento portale vecchio (trigger ingestion)
  - Creazione e validazione mockup
    - 3.2 Creazione mockup pagine 
    - 3.3 Validazione mockup con stakeholder
  - Sviluppo portali web
    - 3.4 Creazione pagina visualizzazione metadati e status estratti
    - 3.5 Sviluppo modulo connessione e salvataggio database post-validazione
    - 3.6 Funzione di modifica e funzione di conferma dei metadati estratti
    - 3.7 Creazione pagina validazione confermata con popup per il feedback clienti
    - 3.8 Sviluppo modulo connessione e salvataggio database feedback clienti
    - 3.9 Funzione di salvataggio del feedback utente
    - 3.10 Creazione pagina ricerca documento
    - 3.11 Sviluppo modulo connessione e ricerca database post-validazione
    - 3.12 Funzione di ricerca documento nel database
    - 3.13 Creazione pagina modifica documento dipendente Specifici
    - 3.15 Funzione di modifica e funzione di conferma dei metadati estratti
  - 3.17 Rilascio in produzione

4. **Documentazione**
  - Guida per l'utente
    - 4.1 Scrittura guida
    - 4.2 Revisione e aggiornamento contenuti
    - 4.3 Pubblicazione guida su Confluence
     
5. **Formazione**
  - 5.1 Selezione formatori interni
  - 5.2 Definizione modalità di formazione
  - 5.3 Sviluppo materiali didattici
  - 5.4 Pianificazione calendario formativo e invio comunicazioni ai partecipanti
  - 5.5 Esecuzione formazione
