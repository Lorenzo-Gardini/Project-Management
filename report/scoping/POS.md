<p style="text-align: right;">
  <img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/hyperflow_logo.png?raw=true" alt="Logo" style="width: 150px;"/>
</p>

# POS

## Titolo Progetto
**ARME**, _"**A**utomated **A**ccident **R**eport **M**etadata **E**xtraction"_


## Descrizione del problema
L'azienda _Specifici_ possiede una grande quantità di documenti di **constatazione amichevole di incidente (CAI)** in formato **PDF** prodotte dai sui clienti. I dipendenti di _Specifici_ le leggono e caricano manualmente le informazioni sul loro portale. Quest'ultimo è collegato a diversi database relazionali _MySQL_ che mantengono tutte le informazioni. Un **dipendente _Specifici_**[^1] impiega circa 7 minuti. Da stime calcolate internamente l'8% dei file analizzati viene caricato sul portale con almeno un errore. Vengono ricevuti in media 30 documenti al giorno, che richiedono circa 3.5 ore di lavoro totali.


## Goal
Il goal consiste nel delegare l'elaborazione dei dati ad un sistema che, con una **pipeline d'ingestion**[^2] automatica, estragga da ciascun documento _CAI_ i metadati necessari. Questi dati vengono mostrati e validati direttamente all'utente e successivamente salvarli nei vari database. I dipendenti _Specifici_ possono effettuare **ricercare, visualizzare e modificare**, i metadati dei documenti estratti.

Per i dettagli delle due modalità controllare documento [user_cases.html](user_cases.html)

La validazione, da parte dell'utente, dei dati estratti serve sia per **compensare eventuali errori** di estazione commessi dal sistema sia per rendere l'utente più **consapevole e responsabile** della qualità dei dati che stanno per essere caricati.  


## Obbiettivi
- **implementazione della logica** di estrazione
- **implementazione dell'infrastruttura** su ambiente cloud _AWS_
- **integrazione con database** preesistenti
- **cambio front-end** per la modalità _ingestion_
- **aggiunta nuovo portale interno** per dipendenti _Specifici_ per la modalità _manuale_
- **scrittura documentazione**, sia del codice sviluppato che del funzionamento generale dell'applicativo, utilizzando **_Confluence_**[^3]
- **formazione** per i dipendenti _Specifici_ sul funzionamento del sistema

## Business value
- **riduzione del tempo di elaborazione**: i documenti vengono processati più rapidamente portando a una **maggiore efficienza operativa**
- **nuova valorizzazione dei dipendenti**: i dipendenti che in precedenza erano impegnati in compiti ripetitivi, ora automatizzati, attraverso nuove mansioni possono vedere valorizzate le loro competenze e il loro potenziale
- **minori costi sulla gestione dei sinistri**: riducendo drasticamente la necessità di interventi manuali, si possono ridurre i costi legati al personale
- **diminuzione errori manuali**: l'automazione riduce gli errori umani che possono portare a costi aggiuntivi o ritardi
- **miglioramento della customer experience**: una gestione più rapida implica che i clienti riceveranno risposte e risarcimenti più velocemente, aumentando la loro **soddisfazione**. Inoltre possono controllare personalmente i dati caricati per poterne verificare l'accuratezza ed eventualmente modificarli
- **analisi**: _Specifici_ può utilizzare i dati raccolti per effettuare **analisi e previsioni** per individuare tendenze, prevenire frodi e migliorare le politiche assicurative
- **adesione alle normative**: automatizzare i processi aiuta a garantire che tutte le operazioni siano conformi alle **normative**, riducendo il rischio di sanzioni
- **gestione dei picchi di richieste**: l'automazione consente di gestire facilmente momenti con **molte richieste**, come quelli dovuti a eventi climatici straordinari o a periodi con un alto numero di incidenti
- **riusabilità**: alcuni elementi del sitema possono essere riutilizzati per creare ulteriori sistemi di **hyper automation**


## Success Criteria
- **miglioramento della customer experience**: la riduzione del tempo di processamento e l'utilizzo della nuova interfaccia deve portare all'**80% di soddisfazione** dei clienti. Questo verrà misurato tramite un **sondaggio** mostrato dopo ogni caricamento di un documento _CAI_ da parte del cliente
- **costi ridotti nella gestione dei sinistri**: riduzione di almeno **40%** dei costi operativi legati alla gestione dei sinistri
- **automazione avanzata**: almeno il **98% dei documenti** caricati dai clienti sul portale devono essere processati automaticamente senza intervento manuale dei dipendenti _Specifici_
- **benessere sul lavoro**: almeno l'**80% dei dipendenti** _Specifici_ coinvolti devono riportare un aumento della soddisfazione lavorativa grazie alla riduzione del carico di lavoro manuale, alla maggiore efficienza operativa e ad una nuova valorizzazione delle loro mansioni lavorative
- **riduzione del tasso di errori**: il tasso d'errore totale deve passare dal precedente 8% a **meno del 1%**


## Assunzioni
- il sistema sarà un **servizio _E2E_**[^4] implementato direttamente sulla piattaforma **_AWS_**[^5] del cliente
- i **costi** per i test, di tutta la piattaforma e della manutenzione saranno **a carico di _Specifici_**
- eventuali **problemi/ritardi** legati all'affidabilità di _AWS_ sono gestiti dal team IT di _Specifici_


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

[^1]: all'interno dei vari documenti vengono definiti con _dipendenti Specifici_ le persone addette ad esaminare e caricare i dati manualmente. Vengono definiti _clienti_ i clienti di _Specifici_, chi compila e invia il documento del sinistro
[^2]: flusso automatizzato che raccoglie, trasforma e carica i dati in un database
[^3]: **Confluence** è uno strumento per la collaborazione in team. Permette di creare, condividere e modificare contenuti (documenti, note, idee) in modo collaborativo. Offre funzionalità di organizzazione, ricerca e integrazione con altri strumenti aziendali. Ideale per migliorare la collaborazione, aumentare la produttività e gestire le informazioni in modo efficace
[^4]: Include la fornitura del servizo completo, dalla pianificazione e progettazione fino alla manutenzione e supporto continuo
[^5]: **Amazon Web Services** è una piattaforma di servizi di cloud computing fornita da Amazon, che offre infrastruttura, piattaforma e software come servizio per costruire e gestire applicazioni nel cloud


