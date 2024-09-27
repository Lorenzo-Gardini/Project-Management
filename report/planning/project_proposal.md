<p style="text-align: right;">
  <img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/hyperflow_logo.png?raw=true" alt="Logo" style="width: 150px;"/>
</p>

## Titolo Progetto
**ARME**, _"**A**utomated **A**ccident **R**eport **M**etadata **E**xtraction"_

## Executive Summary

**ARME** è un sistema automatico di estrazione metadati da documenti _CAI_, in formato png, jpg, PDF o tiff e compilati a mano o digitalmente. Una **pipeline d'ingestion** automatica, estrae da ciascun documento _CAI_ i metadati necessari. Questi dati vengono salvati in un database temporaneo di **pre-validazione** e mostrati con degli indicatori che sottolineano lo status per ogni metadato estratto. L'utente può revisionare, modificare e infine confermare i metadati, modificati e non, che vengono salvati nel database finale di **post-validazione**. I dipendenti _Specifici_, successivamente all'estrazione, possono effettuare **ricercare, visualizzare e modificare**, i metadati dei documenti estratti. 

Il sistema è un **servizio _E2E_** implementato direttamente sulla piattaforma **_AWS_** del cliente.


## Background
L'azienda _Specifici_ possiede una grande quantità di documenti di **Constatazione Amichevole di Incidente (CAI)** in formato **PDF** prodotte dai sui clienti. I dipendenti di _Specifici_ le leggono e caricano manualmente le informazioni sul loro portale. Quest'ultimo è collegato a diversi database relazionali _MySQL_ che mantengono tutte le informazioni. Un **dipendente _Specifici_**[^1] impiega circa 7 minuti a caricare manualmente i dati di ciascun documento. Da stime calcolate internamente da _Specifici_, l'8% dei file analizzati viene caricato sul portale con almeno un errore. Vengono ricevuti in media 30 documenti al giorno, che richiedono circa 3.5 ore di lavoro totali giornaliere. Questo implica che i dipendenti debbano usare le loro ore lavorative per svolgere un lavoro ripetitivo ed automatizzabile.

## Obiettivi
- **implementazione della logica** di estrazione
- **implementazione dell'infrastruttura** su ambiente cloud _AWS_
- **integrazione con database** preesistenti
- **cambio front-end** per la modalità _ingestion_
- **aggiunta nuovo portale interno** per dipendenti _Specifici_ per la modalità _manuale_
- **gestione dei database**, sia _DynamoDB_ che _S3_
- **scrittura documentazione**, sia del codice sviluppato che del funzionamento generale dell'applicativo, utilizzando **_Confluence_**[^1] e **_Sphinx_** [^2]
- **formazione** per i dipendenti _Specifici_ sul funzionamento del sistema

## Architettura sistema
#### Architettura pipeline d'ingestion

<img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/architecture_1.jpg?raw=true" alt="Ingestion Pipeline" style="max-width: 1000px; display:block; margin: 0 auto"/>


Una volta che il documento è stato caricato sul _bucket S3_ dall'utente in automatico viene triggerata la pipeline d'_ingestion_ automatica che estrae i metadati e li salva nel database _Aurora_ di pre-validazione. Viene notificato il client che l'operazione è stata completata.

<img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/architecture_2.jpg?raw=true" alt="Validation" style="max-width: 400px; display:block; margin: 0 auto"/>

#### Architettura visualizzazione e interazione utente

L'utente visualizza, eventualmente modifica e infine conferma i dati che vengono salvati sul database di post-validazione.

La validazione, da parte dell'utente, dei dati estratti serve sia per **compensare eventuali errori** di estrazione commessi dal sistema sia per rendere l'utente più **consapevole e responsabile** della qualità dei dati che stanno per essere caricati.

#### Architettura portale specifici

<img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/architecture_3.jpg?raw=true" alt="Specifici portal" style="max-width: 300px; display:block; margin: 0 auto"/>

Il dipendente _Specifici_ può interrogare direttamente il database di post-validazione in modo da ottenere le informazioni estratte da un documento.

Il tasso di soddisfazione dei clienti viene misurato per la durata di 4 mesi utilizzando un **popup** che viene mostrato al termine di ciascuna esecuzione.

## SWOT Analysis

La SWOT Analysis è presente nel sequente [documento](../scoping/SWOT.html)

## Descrizione del lavoro

Il progetto sarà sviluppato utilizzando un approccio lineare, grazie alla chiarezza dei requisiti e all'esperienza già acquisita da _HyperFlow_ nella realizzazione di sistemi per l'estrazione dei dati da documenti per _Specifici_. L'approccio lineare è stato scelto in modo unanime, poiché le tecnologie necessarie sono ben conosciute e le funzionalità da implementare risultano già definite. Questo permetterà di procedere in modo diretto e senza necessità di adattamenti durante il percorso, garantendo una realizzazione efficace e puntuale del progetto.

## Tempi e costi

### Tempi

Si prevede che lo sviluppo del progetto richiederà circa tre mesi. Durante questo periodo, verranno organizzate diverse riunioni settimanali per monitorare lo stato di avanzamento.
La conclusione del progetto potrà subire un ritardo di 10 giorni lavorativi, destinati alla _scope bank contingency_.
Le stime dei tempi sono disponibili nei documenti di [PND](planning/PND.html) e Project Scheduling (importare il file [gantt.csv](files/gantt.csv) sul sito [https://www.onlinegantt.com/#/gantt](https://www.onlinegantt.com/#/gantt)).

Successivo al termine dello sviluppo segue una fase di 4 mesi di collaudo da parte dei dipendenti _Specifici_ e dei clienti. 

### Stima delle risorse
La gestione delle risorse è presente nel documento [Cost Management](cost_management.html)

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