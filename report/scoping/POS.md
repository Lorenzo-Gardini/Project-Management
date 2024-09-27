<p style="text-align: right;">
  <img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/hyperflow_logo.png?raw=true" alt="Logo" style="width: 150px;"/>
</p>

# Project Overview Statement

## Descrizione del problema
L'azienda _Specifici_ possiede una grande quantità di documenti di **Constatazione Amichevole di Incidente (CAI)** in formato **PDF** prodotte dai sui clienti. I dipendenti di _Specifici_ le leggono e caricano manualmente le informazioni sul loro portale. Quest'ultimo è collegato a diversi database relazionali _MySQL_ che mantengono tutte le informazioni. Un **dipendente _Specifici_**[^1] impiega circa 7 minuti a caricare manualmente i dati di ciascun documento. Da stime calcolate internamente da _Specifici_, l'8% dei file analizzati viene caricato sul portale con almeno un errore. Vengono ricevuti in media 30 documenti al giorno, che richiedono circa 3.5 ore di lavoro totali giornaliere. Questo implica che i dipendenti debbano usare le loro ore lavorative per svolgere un lavoro ripetitivo ed automatizzabile.

## Goal
Il goal consiste nel delegare l'elaborazione dei dati ad un sistema che, con una **pipeline d'ingestion**[^2] automatica, estragga da ciascun documento _CAI_, compilato a mano o digitalmente, i metadati necessari. Questi dati vengono mostrati all'utente e successivamente salvati nei vari database. I dipendenti _Specifici_ possono, in un secondo momento, effettuare **ricercare, visualizzare e modificare**, i metadati estratti dai documenti.

## Obiettivi
- **implementazione del sistema di estrazione metadati automatico**
- **implementazione dei portali web**
- **scrittura documentazione**, sia del codice sviluppato che del funzionamento generale dell'applicativo
- **formazione** per i dipendenti _Specifici_ sul funzionamento del sistema

## Success Criteria
- **miglioramento della customer experience**: la riduzione del tempo di processamento e l'utilizzo della nuova interfaccia deve portare all'**80% di soddisfazione** dei clienti entro i primi 4 mesi di utilizzo del sistema
- **costi ridotti nella gestione dei sinistri**: riduzione di almeno **40%** dei costi operativi legati alla gestione dei sinistri
- **automazione avanzata**: almeno il **98% dei documenti** caricati dai clienti sul portale devono essere processati automaticamente senza intervento manuale dei dipendenti _Specifici_
- **benessere sul lavoro**: almeno l'**80% dei dipendenti** _Specifici_ coinvolti devono riportare un aumento della soddisfazione grazie alla riduzione del carico di lavoro manuale, alla maggiore efficienza operativa e ad una nuova valorizzazione delle loro mansioni lavorative
- **riduzione del tasso di errori**: il tasso d'errore annuale sui dati caricati deve passare dal precedente 8% a **meno del 3%**

## Assunzioni
- il sistema sarà un **servizio _E2E_**[^3] implementato direttamente sulla piattaforma **_AWS_**[^4] del cliente
- i **costi** per i test, di tutta la piattaforma e della manutenzione saranno **a carico di _Specifici_**
- eventuali **problemi/ritardi** legati all'affidabilità di _AWS_ sono gestiti dal team IT di _Specifici_

## Rischi e ostacoli
- livello di **accuratezza** previsto **non raggiunto**
- **costi troppo alti** per le tecnologie utilizzate
- **clientela non soddisfatta**
- **performance non sufficienti**
- **resistenza** da parte del personale _Specifici_ **al cambio** di mansioni
- **cambio normative** vigenti
- **esaurimento tempo a disposizione** per lo sviluppo del sistema

[^1]: all'interno dei vari documenti vengono definiti con _dipendenti Specifici_ le persone addette ad esaminare e caricare i dati manualmente. Vengono definiti _clienti_ i clienti di _Specifici_, chi compila e invia il documento del sinistro
[^2]: flusso automatizzato che raccoglie, trasforma e carica i dati in un database
[^3]: si riferisce all'implementazione e gestione completa di un sistema o di una soluzione, dall'origine (ad esempio, l'input dell'utente) fino al risultato finale
[^4]: **Amazon Web Services** è una piattaforma di servizi di cloud computing fornita da Amazon, che offre infrastruttura, piattaforma e software come servizio per costruire e gestire applicazioni nel Cloud


