<p style="text-align: right;">
  <img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/hyperflow_logo.png?raw=true" alt="Logo" style="width: 150px;"/>
</p>

# POS

## Titolo Progetto
**ARME**, _"**A**utomated **A**ccident **R**eport **M**etadata **E**xtraction"_

## Descrizione del problema
L'azienda _Specifici_ possiede una grande quantità di documenti di **constatazione amichevole di incidente (CAI)** in formato **PDF** prodotte dai sui clienti. I dipendenti di _Specifici_ le leggono e caricano manualmente le informazioni sul loro portale. Quest'ultimo è collegato a diversi database relazionali _MySQL_ che mantengono tutte le informazioni. Un **dipendente _Specifici_**[^1] impiega circa 7 minuti. Da stime calcolate internamente l'8% dei file analizzati viene caricato sul portale con almeno un errore. Vengono ricevuti in media 30 documenti al giorno, che richiedono circa 3.5 ore di lavoro totali.

## Goal
Il goal consiste nel creare un sistema che permetta di poter, in maniera automatica e strutturata, estrarre da ciascun documento _CAI_ i metadati necessari e salvarli nei vari database. Le modalità di utilizzo del sitema sono due:
- tramite **pipeline d'ingestion**[^2] automatica dei file caricati dai clienti di _Specifici_ dal portale web
- **esecuzione manuale** da parte di dipendenti _Specifici_ tramite un secondo portale web

## Business value
- **riduzione del tempo di elaborazione**: i documenti vengono processati più rapidamente portando a una **maggiore efficienza operativa**
- **eliminazione lavoro manuale**: Il personale può dedicarsi a compiti più complessi e strategici, lasciando le attività ripetitive all'automazione
- **minori costi sulla gestione dei sinistri**: riducendo drasticamente la necessità di interventi manuali, _Specifici_ può ridurre i costi legati al personale addetto alla gestione dei sinistri
- **diminuzione errori manuali**: l'automazione riduce gli errori umani che possono portare a costi aggiuntivi o ritardi
- **miglioramento della customer experience**: una gestione più rapida implica che i clienti riceveranno risposte e risarcimenti più velocemente, aumentando la loro **soddisfazione**
- **analisi predittiva**: _Specifici_ può utilizzare l'**analisi predittiva** per individuare tendenze, prevenire frodi e migliorare le politiche assicurative
- **adesione alle normative**: automatizzare i processi aiuta a garantire che tutte le operazioni siano conformi alle **normative**, riducendo il rischio di sanzioni
- **gestione dei picchi di richieste**: l'automazione consente di gestire facilmente momenti con **molte richieste**, come quelli dovuti a eventi climatici straordinari o a periodi di alta sinistrosità.
- **riusabilità**: alcuni elementi del sitema possono essere riutilizzati per creare ulteriori sistemi di **hyper automation**

## Obbiettivi
- **Implementazione della logica** di estrazione
- **Implementazione dell'infrastruttura** su ambiente cloud _AWS_
- **Gestione caricamento dati su database** pre esistenti
- **Cambio front-end** portale pre esistente per la modalità _ingestion_
- **Aggiunta nuovo portale interno** per dipendenti _Specifici_ per la modalità _manuale_
- **Scrittura documentazione**, sia del codice sviluppato che del funzionamento generale dell'applicativo utilizzando **_Confluence_**[^3]
- **Formazione** per i dipendenti _Specifici_ sul funzionamento del sistema

## Success Criteria

## Success Criteria

## Success Criteria

- **Accuratezza dell'estrazione dei metadati**: 
  - Il sistema deve raggiungere almeno il **95% di accuratezza** nell'estrazione dei metadati dai documenti _CAI_, calcolata sui batch di validation e user tests.
  - Devono essere rispettati i vincoli di accuratezza descritti nelle _Conditions of Satisfaction_ (CoS).

- **Riduzione del tempo di elaborazione**: 
  - Il tempo medio di elaborazione per documento deve essere ridotto a meno di **2 minuti**, compreso il tempo di controllo manuale da parte dei dipendenti Specifici.

- **Riduzione degli errori manuali**: 
  - Il tasso di errori manuali nei documenti caricati deve essere ridotto a meno del **1%**.

- **Automazione del processo di caricamento**: 
  - Almeno il **90% dei documenti** caricati dai clienti sul portale devono essere processati automaticamente senza intervento manuale.

- **Soddisfazione dei dipendenti Specifici**: 
  - Almeno l'**80% dei dipendenti** Specifici coinvolti devono riportare un aumento della soddisfazione lavorativa grazie alla riduzione del carico di lavoro manuale e alla maggiore efficienza operativa.

- **Conformità normativa**: 
  - Il sistema deve essere conforme al **100%** con tutte le normative vigenti relative alla gestione dei sinistri e alla protezione dei dati personali.

- **Scalabilità e gestione dei picchi di richieste**: 
  - Il sistema deve essere in grado di gestire un incremento del **50% nel numero di documenti** ricevuti giornalmente senza perdita di performance o accuratezza.

- **Documentazione e formazione**: 
  - La documentazione del sistema (in Confluence) deve essere completa e comprensibile, con un feedback positivo di almeno l'**85%** dai dipendenti Specifici formati.
  - Tutti i dipendenti Specifici coinvolti devono completare con successo il programma di formazione entro il periodo stabilito.

- **Performance del sistema**: 
  - Il sistema deve mantenere una performance stabile e senza errori critici durante i test di validazione e i test E2E in ambiente di produzione.
  - I tempi di risposta delle pipeline di ingestion e delle operazioni manuali devono essere inferiori a **5 secondi** per il **95% delle richieste**.

- **Integrazione e interoperabilità**: 
  - Il sistema deve integrarsi perfettamente con i database MySQL esistenti e con i portali web di Specifici, senza richiedere modifiche significative alle infrastrutture esistenti.
  - Deve essere possibile riutilizzare componenti del sistema per ulteriori progetti di hyper automation.


- **Aumento dell'efficienza operativa**: Riduzione del tempo medio di elaborazione per documento da 7 minuti a meno di 2 minuti.
- **Diminuzione degli errori**: Riduzione del tasso di errori nei documenti caricati manualmente dall'8% a meno dell'1%.
- **Automazione riuscita**: Almeno il 90% dei documenti caricati dai clienti sul portale vengono processati automaticamente.
- **Soddisfazione dei dipendenti**: Almeno l'80% dei dipendenti Specifici riportano una maggiore soddisfazione lavorativa grazie alla riduzione del carico di lavoro manuale.
- **Conformità alle normative**: Il sistema deve garantire il 100% di conformità con le normative vigenti relative alla gestione dei sinistri e alla protezione dei dati personali.
- **Gestione dei picchi di richieste**: Il sistema deve essere in grado di gestire un aumento del 50% nel numero di documenti ricevuti giornalmente senza perdita di performance.
- **Feedback positivo sulla documentazione**: La documentazione del sistema deve ricevere un feedback positivo da almeno l'85% dei dipendenti Specifici formati.
- **Miglioramento della customer experience**: Riduzione del tempo di risposta ai clienti, portando a un aumento della soddisfazione dei clienti misurato tramite sondaggi.
- **Costi ridotti nella gestione dei sinistri**: Riduzione dei costi operativi legati alla gestione dei sinistri grazie alla diminuzione del lavoro manuale.
- **Riusabilità del sistema**: Elementi del sistema devono essere riutilizzabili per creare ulteriori sistemi di hyper automation, riducendo i tempi e i costi di sviluppo futuri.


## Assunzioni e vincoli
- Il sistema sarà un **servizio _E2E_**[^4] implementato direttamente sulla piattaforma **_AWS_**[^5] del cliente.
- I **costi** per i test, di tutta la piattaforma e della manutenzione saranno **a carico del cliente**.
- Il cliente fornirà due _batch_ di documenti PDF che sono stati caricati manualmente e le loro informazioni sono quindi già presenti nel database. Questi documenti vengono inoltre selezionati accuratamente dal cliente in modo che abbiano **più variabilità possibile** e che quindi possano coprire più casistiche. Il primo _batch_, definito di **train**, è composto da circa 500 documenti che verranno utilizzati come _true labels_, durante la fase di sviluppo, per poter calcolare **l'accuratezza** dell'estrazione automatica. Per i **_Validation Tests_** verrà utilizzato un _batch_, definito di **validation**, composto da 200 documenti mai visti durante lo sviluppo ma comunque già presenti nel database. Infine per i **_User Tests_** ogni nuovo documento ricevuto dal cliente verrà prima processato dal sistema, poi l'utente effettuerà un controllo manuale tra i dati del documento e i valori estratti calcolando l'accuratezza[^6].
- Il calcolo dell'accuratezza viene calcolata sulla base dei **singoli metadati** (riferimento al documento [metadata_and_accuracy.html](metadata_and_accuracy.html))


## Milestones
Sono state decise le seguenti _milestones_ che devono essere raggiunte nel seguente ordine:

| Ordine | Oggetto                     | Ambiente   | Nota aggiuntiva                                                                                           |
|:------:|:---------------------------:|:----------:|-----------------------------------------------------------------------------------------------------------|
| 1      | Sviluppo logica             | Test       | lo sviluppo comprende test sul _batch_ di **train**                                                       |
| 2      | Sviluppo infrastruttura     | Test       | su AWS industrializzando la parte di logica                                                               |
| 3      | Sviluppo e test portali web | Test       | sviluppo portale nuovo e cambio del precedente                                                            | 
| 4      | Performance test            | Test       | test sulle performance di tempo del sistema                                                               |
| 4*     | Test portali web            | Produzione | verifica del funzionamento dei portali web in ambiente di produzione                                      |
| 5      | Validation test             | Test       | test sul _batch_ di **validation**                                                                        |
| 6      | Test E2E                    | Produzione | verifica del funzionamento del sistema in ambiente di produzione su _bach_ di **train** e **validation**  |
| 7      | User test                   | Produzione | test effettuato lato cliente, in cui i dipendenti proveranno il sistema e vengono raccolte le accuratezze |

\* i test per i portali web possono essere effettuati parallelamente ai _Performance test_.

[^1]: all'interno dei vari documenti vengono definiti con _dipendenti Specifici_ le persone addette ad esaminare e caricare i dati manualmente. Vengono definiti _clienti_ i clienti di _Specifici_, chi compila e invia il documento del sinistro.
[^2]: flusso automatizzato che raccoglie, trasforma e carica i dati in un database.
[^3]: **Confluence** è uno strumento per la collaborazione in team. Permette di creare, condividere e modificare contenuti (documenti, note, idee) in modo collaborativo. Offre funzionalità di organizzazione, ricerca e integrazione con altri strumenti aziendali. Ideale per migliorare la collaborazione, aumentare la produttività e gestire le informazioni in modo efficace.
[^4]: Include la fornitura del servizo completo, dalla pianificazione e progettazione fino alla manutenzione e supporto continuo.
[^5]: **Amazon Web Services** è una piattaforma di servizi di cloud computing fornita da Amazon, che offre infrastruttura, piattaforma e software come servizio per costruire e gestire applicazioni nel cloud.
[^6]: Si è deciso di optare per questa soluzione in quanto, se il sistema di estrazione rispetta i vincoli di accuratezza descritti nelle _CoS_ (riferimento al documento [CoS.html](CoS.html)), è molto più veloce utilizzare il sitema e controllare a posteriori l'accuratezza piuttosto che estrarre i dati manualmente. 


