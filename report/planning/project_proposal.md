<p style="text-align: right;">
  <img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/hyperflow_logo.png?raw=true" alt="Logo" style="width: 150px;"/>
</p>

## Titolo Progetto
**ARME**, _"**A**utomated **A**ccident **R**eport **M**etadata **E**xtraction"_

## Executive Summary

**ARME** è un sistema automatico di estazione metadati da documenti _CAI_, in formato PNG, JPG o PDF e compilati a mano o digitalmente. Una **pipeline d'ingestion** automatica, estrae da ciascun documento _CAI_ i metadati necessari. Questi dati vengono salvati in un database temporaneo di **pre-validazione** e mostrati con degli indicatori che sottolineano lo status per ogni metadato estratto. L'utente può revisionare, modificare e infine confermare i metadati, modificati e non, che vengono salvati nel database finale di **post-validazione**. I dipendenti _Specifici_, successivamente all'estrazione, possono effettuare **ricercare, visualizzare e modificare**, i metadati dei documenti estratti. 

La validazione, da parte dell'utente, dei dati estratti serve sia per **compensare eventuali errori** di estazione commessi dal sistema sia per rendere l'utente più **consapevole e responsabile** della qualità dei dati che stanno per essere caricati. 

Il tasso di soddisfazione dei clienti viene misurato per la durata di 1 anno utilizzando un **popup** che viene mostrato al termine di ciascuna esecuzione.

## Background
L'azienda _Specifici_ possiede una grande quantità di documenti di **constatazione amichevole di incidente (CAI)** in formato **PDF** prodotte dai sui clienti. I dipendenti di _Specifici_ le leggono e caricano manualmente le informazioni sul loro portale. Quest'ultimo è collegato a diversi database relazionali _MySQL_ che mantengono tutte le informazioni. Un **dipendente _Specifici_** impiega circa 7 minuti. Da stime calcolate internamente l'8% dei file analizzati viene caricato sul portale con almeno un errore. Vengono ricevuti in media 30 documenti al giorno, che richiedono circa 3.5 ore di lavoro totali.

## Obiettivi
- **implementazione della logica** di estrazione
- **implementazione dell'infrastruttura** su ambiente cloud _AWS_
- **integrazione con database** preesistenti
- **cambio front-end** per la modalità _ingestion_
- **aggiunta nuovo portale interno** per dipendenti _Specifici_ per la modalità _manuale_
- **gestione dei database**, sia _DynamoDB_ che _S3_
- **scrittura documentazione**, sia del codice sviluppato che del funzionamento generale dell'applicativo, utilizzando **_Confluence_**[^1] e **_Sphinx_** [^2]
- **formazione** per i dipendenti _Specifici_ sul funzionamento del sistema

## Architettura sitema
#### Architettura pipeline d'ingestion

<img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/architecture_1.jpg?raw=true" alt="Ingestion Pipeline" style="max-width: 1000px; display:block; margin: 0 auto"/>


Una volta che il documento è stato caricato, tramite Web App, sul _bucket S3_ in automatico viene triggerata la pipeline d'_ingestion_ che estrae i metadati e li salva nel database _Aurora_ di pre-validazione. La _Lambda Function_ **Start** che controlla la risoluzione del documento e, in caso fosse troppo bassa, avvierebbe il flusso, composto da una _Step Function_, in modalità _Errore_ mostrando nella client Web App un messaggio che invita l'utente a caricare un file con risoluzione più alta. Nel caso il documento avesse una risoluzione sufficiente, allora il flusso viene avviato senza errori. I passaggi che vengono eseguiti sono i seguenti:

- _Lambda Function_ **Preprocessing**: ha il compito di preprocessare il documento in modo che possa essere più facile per textract estrarre il testo
- _Lambda Function_ **Textract Proxy**: effettua una chiamata al servizio di AWS _Textract_ che estrae il testo dalle immagini con un processo di _Optical Character Recognition_ (OCR)
- _Lambda Function_ **OCR Reconstruction**: riceve il file .JSON generato da _Textract_ e ne cambia il formato in modo che possa essere utilizzato dai modelli di linguaggio successivamente
- _Lambda Function_ **CAI NER**: un modello di _NER_ (_Named Entity Recognition_) viene applicato ai documenti _CAI_, identifica e classifica automaticamente informazioni cruciali come nomi dei conducenti, numeri di targa, date dell'incidente, luoghi, descrizioni dei danni e altre entità rilevanti presenti nel modulo
- _Lambda Function_ **Postprocessing**: ha il compito di riformattare l'output del modello in modo che abbia una struttura standard
- _Lambda Function_ **Status Generator**: in base a ciò che il modello ha estratto e alla sua confidenza genera, in modo strutturato, uno status per ogni metadato
- _Lambda Function_ **Output Generator**: organizza e scrive tutti i dati prodotti nel database _Aurora_ di pre-validazine. Inoltre, inseriesce un messaggio sulla coda _SQS_ in modo da notificare il client che l'operazione è stata completata.

<img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/architecture_2.jpg?raw=true" alt="Validation" style="max-width: 400px; display:block; margin: 0 auto"/>

Una volta che il flusso è terminato e il client viene notificato dalla coda _SQS_ vengono mostrati all'utente i metadati estratti con il relativo status. L'utente può modificare e/o confermare i dati mostrati che vengono salvati sul database _Aurora_ di post-validazione.

<img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/architecture_3.jpg?raw=true" alt="Specifici portal" style="max-width: 300px; display:block; margin: 0 auto"/>

Il dipendente _Specifici_ può, su un portale interno ad utilizzo solo dei dipenti _Specifici_, effetturare delle ricerche su documenti _CAI_ estratti, visualizzare i metadati presenti nel database _Aurora_ di post-validazione e modificarli.

## SWAT Analysis

La SWAT Analysis è presente nel sequente [documento](../scoping/SWAT.html)

#### Descrizione del lavoro

Il progetto sarà sviluppato utilizzando un approccio lineare, grazie alla chiarezza dei requisiti e all'esperienza già acquisita da _HyperFlow_ nella realizzazione di sistemi per l'estrazione dei dati da documenti per _Specifici_. L'approccio lineare è stato scelto in modo unanime poiché le tecnologie necessarie sono ben conosciute e le funzionalità da implementare risultano già definite. Questo permetterà di procedere in modo diretto e senza necessità di adattamenti durante il percorso, garantendo una realizzazione efficace e puntuale del progetto.

## Tempi e costi

#### Tempi

Si prevede che lo sviluppo del progetto richiederà circa tre mesi. Durante questo periodo, verranno organizzate diverse riunioni settimanali per monitorare lo stato di avanzamento.
La conclusione del progetto potrà subire un ritardo di quindici giorni lavorativi, destinati alla contingency.
Le stime dei tempi sono disponibili nei documenti di [PND](planning/PND.html) e Project Scheduling (importare il file [gantt.csv](files/gantt.csv) sul sito [https://www.onlinegantt.com/#/gantt](https://www.onlinegantt.com/#/gantt)).


#### Stima delle risorse

**Risorse Umane:**

- Theoden (Project Manager)
- Faramir (Senior Data Scientist)
- Gimli (Senior Cloud Engineer, Team Lead)
- Gandalf (Senior Full Stack Developer)
- Frodo (Data Scientist)
- Eowyn (Data Scientist)
- Bilbo (Cloud Engineer)
- Sam (Cloud Engineer)

**Cloud:**

- AWS

Tutti gli sviluppatori lavorano in smart working e tutte le call avverranno da remoto. 


## Milestones
Sono state decise le seguenti _milestones_ che devono essere raggiunte nel seguente ordine:

1. **Completamento della logica**
2. **Completamento infrastruttura**
3. **Completamento portali web**
4. **Superamento test in ambiente di produzione**
5. **Completamento formazione**

Il completamento di una milestone comprende sempre il superamento di tutti i test con tutti i dati forniti.


[^1]: **Confluence** è uno strumento per la collaborazione in team. Permette di creare, condividere e modificare contenuti (documenti, note, idee) in modo collaborativo. Offre funzionalità di organizzazione, ricerca e integrazione con altri strumenti aziendali. Ideale per migliorare la collaborazione, aumentare la produttività e gestire le informazioni in modo efficace

[^2]: **Sphinx** è uno strumento per generare documentazione da codice Python in formati come HTML e PDF, utilizzando reStructuredText.