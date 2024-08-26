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
- **scrittura documentazione**, sia del codice sviluppato che del funzionamento generale dell'applicativo, utilizzando **_Confluence_**[^1] e **_Sphinx_** [^2]
- **formazione** per i dipendenti _Specifici_ sul funzionamento del sistema

## Architettura sitema
#### Architettura pipeline d'ingestion

<img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/architecture_1.jpg?raw=true" alt="Ingestion Pipeline" style="max-width: 1000px; display:block; margin: 0 auto"/>


Una volta che il documento è stato caricato sul _bucket S3_ dall'utente in automatico viene triggerata la pipeline d'_ingestion_ automatica che estrae i metadati e li salva nel database _Aurora_ di pre-validazione. Viene messo un messaggio sulla coda _SQS_ in modo da notificare il client che l'operazione è stata completata.

<img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/architecture_2.jpg?raw=true" alt="Validation" style="max-width: 400px; display:block; margin: 0 auto"/>

L'utente può confermare i dati estratti/modificati che vengono salvati sul database di post-validazione.

<img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/architecture_3.jpg?raw=true" alt="Specifici portal" style="max-width: 300px; display:block; margin: 0 auto"/>

Il dipendente specifici può interrogare direttamente il database di post-validazione in modo da otterenere le infomazioni estratte da un documento.

## Milestones
Sono state decise le seguenti _milestones_ che devono essere raggiunte nel seguente ordine:

1. **Completamento della logica**
2. **Completamento infrastruttura**
3. **Completamento portali web**
4. **Superamento test in ambiente di produzione**

Il completamento di una milestone comprende sempre il superamento di tutti i test con i batch di _train_ e _validation_.


[^1]: **Confluence** è uno strumento per la collaborazione in team. Permette di creare, condividere e modificare contenuti (documenti, note, idee) in modo collaborativo. Offre funzionalità di organizzazione, ricerca e integrazione con altri strumenti aziendali. Ideale per migliorare la collaborazione, aumentare la produttività e gestire le informazioni in modo efficace

[^2]: **Sphinx** è uno strumento per generare documentazione da codice Python in formati come HTML e PDF, utilizzando reStructuredText.