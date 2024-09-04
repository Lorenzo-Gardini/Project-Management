<p style="text-align: right;">
  <img src="https://githubcom/Lorenzo-Gardini/Project-Management/blob/main/report/images/hyperflow_logopng?raw=true" alt="Logo" style="width: 150px;"/>
</p>

# Project Definition Statement

## Problema/Opportunità

L'azienda _Specifici_ possiede una grande quantità di documenti di **Constatazione Amichevole di Incidente (CAI)** in formato **PDF** prodotte dai sui clienti. I dipendenti di _Specifici_ le leggono e caricano manualmente le informazioni sul loro portale. Quest'ultimo è collegato a diversi database relazionali _MySQL_ che mantengono tutte le informazioni. Un **dipendente _Specifici_** impiega circa 7 minuti a caricare manualmente i dati di ciascun documento. Da stime calcolate internamente l'8% dei file analizzati viene caricato sul portale con almeno un errore. Vengono ricevuti in media 30 documenti al giorno, che richiedono circa 3.5 ore di lavoro totali. Questo implica che i dipendenti siano pagati per svolgere un lavoro ripetitivo ed automatizzabile.

## Project Goal 

Il progetto mira a trasformare e automatizzare il processo manuale di gestione dei documenti di _Constatazione Amichevole di Incidente_ (CAI) all'interno dell'azienda _Specifici_. L'obiettivo principale è sviluppare una soluzione di _hyper-automation_ che, attraverso una _pipeline d'ingestion_ automatica, estragga in modo accurato i metadati dai documenti _CAI_, siano essi compilati a mano o digitalmente, e li renda accessibili tramite un portale web _user-friendly_. Questo progetto ridurrà significativamente i tempi di gestione e i costi operativi, migliorando al contempo l'accuratezza e la soddisfazione sia dei clienti che dei dipendenti, con un focus particolare sul rispetto delle normative vigenti in materia di gestione dei sinistri e protezione dei dati (GDPR). La documentazione tecnica sarà completa e comprensibile, con l'obiettivo di garantire un'adozione positiva da parte dei dipendenti e una facile integrazione del sistema in ulteriori progetti futuri di _hyper-automation_ dell'azienda.

## Obiettivi

Per quanto riguarda il sistema, è stato scelto di realizzare una suddivisione in due parti: il flusso di _ingestion_ automatico e il portale web interno.

### Ingestion
I clienti di _Specifici_ accedono al portale web dedicato al caricamento dei documenti _CAI_. Da qui verrà chiesto loro di sottomettere il documento.
Il portale salva sul _Bucket S3_ il documento e in automatico viene triggerata la pipeline d'_ingestion_. La _Lambda Function_ **Start** controlla la risoluzione del documento e, in caso fosse troppo bassa, avvierebbe il flusso in modalità _Errore_ mostrando al cliente un messaggio che invita l'utente a caricare un file con risoluzione più alta. Nel caso il documento avesse una risoluzione sufficiente, allora il flusso viene avviato senza errori. I passaggi che vengono eseguiti dalla _Step Function_ sono i seguenti:

- _Lambda Function_ **Preprocessing**: ha il compito di preprocessare il documento in modo che possa essere più facile per textract estrarre il testo
- _Lambda Function_ **Textract Proxy**: effettua una chiamata al servizio di AWS _Textract_ che estrae il testo dalle immagini con un processo di _Optical Character Recognition_ (OCR)
- _Lambda Function_ **OCR Reconstruction**: riceve il file .JSON generato da _Textract_ e ne cambia il formato in modo che possa essere utilizzato dai modelli di linguaggio successivamente
- _Lambda Function_ **CAI NER**: un modello di _NER_ (_Named Entity Recognition_) viene applicato ai documenti _CAI_, identifica e classifica automaticamente informazioni cruciali come nomi dei conducenti, numeri di targa, date dell'incidente, luoghi, descrizioni dei danni e altre entità rilevanti presenti nel modulo
- _Lambda Function_ **Postprocessing**: ha il compito di riformattare l'output del modello in modo che abbia una struttura standard
- _Lambda Function_ **Status Generator**: in base a ciò che il modello ha estratto e alla sua confidenza genera, in modo strutturato, uno status per ogni metadato
- _Lambda Function_ **Output Generator**: organizza e scrive tutti i dati prodotti nel database _Aurora_ di pre-validazine. Inoltre, inseriesce un messaggio sulla coda _SQS_ in modo da notificare il client che l'operazione è stata completata.

Una volta che il flusso è terminato e il client viene notificato dalla coda _SQS_ vengono mostrati all'utente i metadati estratti con il relativo status. L'utente può modificare e/o confermare i dati mostrati che vengono salvati sul database _Aurora_ di post-validazione.

### Portale Web Interno

Il dipendente _Specifici_ può, su un portale interno ad utilizzo solo dei dipenti _Specifici_, effettuare delle ricerche su documenti _CAI_ estratti, visualizzare i metadati presenti nel database _Aurora_ di post-validazione e modificarli.


## Requirements

Si fa riferimento alle [CoS](../scoping/CoS.html) e ai _Success Criteria_ nel documento di [POS](../scoping/POS.html).

Certo! Ecco il testo con gli accenti corretti:

Affinché i criteri di soddisfazione siano valutati oggettivamente, vengono utilizzati i questionari anonimi e feedback diretti da parte di _Specifici_ e l'utilizzo di popups per quanto riguarda la valutazione clienti.

I primi serviranno soprattutto nella fase iniziale del lavoro, in cui sarà fondamentale la parte di studio, sviluppo e presentazione dei _mockup_ dei vari portali web mentre la seconda verrà gestita nella fase di deploy dell'intero sistema e nella quale ci sarà un utilizzo reale. Nel caso ci siano problemi è cura di _Specifici_ intervenire tempestivamente per risolverli.

## Assunzioni

Si fa riferimento alla parte di _Assunzioni_ presente nel [POS](../scoping/POS.html).

## Rischi 

Si fa riferimento [Risk Analysis](../scoping/risks_analysis.html).