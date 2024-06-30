<p style="text-align: right;">
  <img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/hyperflow_logo.png?raw=true" alt="Logo" style="width: 150px;"/>
</p>

# POS

## Titolo Progetto

**APME**, **_"Automated Auto Policy Metadata Extraction"_**


## Descrizione del problema

L'azienda *Specifici* possiede una grande quantità di documenti di **polizze assicurative RCA** in formato **PDF** prodotte dai sui clienti. I dipendenti di *Specifici* le leggono e caricano manualmente le informazioni sul loro portale. Quest'ultimo è collegato a diversi database relazionali _MySQL_ che mantengono tutte le informazioni. Un dipendente **Specifici**[^1] impiega dai 5 ai 10 minuti a documento considerando che deve effettuare le operazioni a mano e che i documenti sono di molte lingue diverse. Da stime calcolate internamente all'azienda il 5% dei file analizzati viene caricato sul portale con almeno un errore. 

## Goal
Il goal consiste nel creare un sistema che permetta di poter, in maniera automatica e strutturata, estrarre da ciascun documento di polizza i metadati necessari e salvarli nei database.

## Business value

- **Automazione**: Elimina la necessità di inserimento manuale dei dati, migliorando l'efficienza operativa.
- **Precisione**: Riduce gli errori associati all'interpretazione manuale dei documenti.
- **Rapidità**: Consente un rapido accesso alle informazioni delle polizze per supportare le decisioni aziendali e migliorare il servizio clienti.
- **Semplicità**: Concentrandosi solo sull'estrazione e sul caricamento dei dati, si semplifica il processo senza la necessità di gestire la generazione di documenti aggiuntivi come endorsement.
- **Valorizzazione**: I dipendenti di *Specifici* possono essere riallocati in compiti con un valore aziendale maggiore favorendo crescita professionale e la qualità del lavoro svolto.  
- **Riutilizzo**: Alcune componenti del sistema verranno usate per lo sviluppo di ulteriori progetti inerenti all'estrazione automatica di dati da documenti, **risparmiando tempo e denaro**.

## Obbiettivi

- **Implementazione della logica** di estrazione
- **Implementazione dell'infrastruttura** su ambiente cloud _AWS_
- **Scrittura documentazione**, sia del codice sviluppato che del funzionamento generale dell'applicativo utilizzando **_Confluence_**[^2]
- **Formazione** per il cliente sul funzionamento del sistema

## Success Criteria



## Assunzioni e vincoli
- Il sistema sarà un **servizio _E2E_**[^3] implementato direttamente sulla piattaforma **_AWS_**[^4] del cliente.
- I **costi** per i test, di tutta la piattaforma e della manutenzione saranno **a carico del cliente**.
- Il cliente fornirà due _batch_ di documenti PDF che sono stati caricati manualmente e le loro informazioni sono quindi già presenti nel database. Questi documenti vengono inoltre selezionati accuratamente dal cliente in modo che abbiano **più variabilità possibile** e che quindi possano coprire più casistiche. Il primo _batch_, definito di **train**, è composto da circa 500 documenti che verranno utilizzati come _true labels_, durante la fase di sviluppo, per poter calcolare **l'accuratezza** dell'estrazione automatica. Per i **_Validation Tests_** verrà utilizzato un _batch_, definito di **validation**, composto da 200 documenti mai visti durante lo sviluppo ma comunque già presenti nel database. Infine per i **_User Tests_** ogni nuovo documento ricevuto dal cliente verrà prima processato dal sistema, poi l'utente effettuerà un controllo manuale tra i dati del documento e i valori estratti calcolando l'accuratezza[^5].
- Il calcolo dell'accuratezza viene calcolata sulla base dei **singoli metadati** (riferimento al documento Metadata_and_Accuracy.pdf)


## Essentials stackholders

| Stakeholder           | Identificazione        |
|-----------------------|------------------------|
| Sponsor               | Specifici              |
| Utenti                | Dipendenti Specifici   |
| Fornitori di APME     | HyperFlow              |
| Fornitori risorse     | Specifici              |

## Deliverables

- Sistema completo su piattaforma cloud
- Documentazione

## Milestones
Sono state decise le seguenti _milestones_ che devono essere raggiunte nel seguente ordine:

| Ordine | Oggetto                 | Ambiente   | Nota aggiuntiva                                                                                           |
|:------:|:-----------------------:|:----------:|-----------------------------------------------------------------------------------------------------------|
| 1      | Sviluppo Logica         | Test       | lo sviluppo comprende test sul _batch_ di **train**                                                       |
| 2      | Sviluppo Infrastruttura | Test       |                                                                                                           |
| 3      | Performance Test        | Test       | test sulle performance di tempo del sistema                                                               |
| 4      | Validation Test         | Test       | test sul _batch_ di **validation**                                                                        |
| 5      | Test E2E                | Produzione | verifica del funzionamento del sistema in ambiente di produzione su _bach_ di **train** e **validation**  |
| 6      | User Test               | Produzione | test effettuato lato cliente, in cui i dipendenti proveranno il sistema e vengono raccolte le accuratezze |

[^1]: all'interno dei vari documenti con il termine *utenti* vengono definiti i dipendenti *Specifici* addetti alle estrazioni dei metadati dalle polizze.
[^2]: **Confluence** è uno strumento per la collaborazione in team. Permette di creare, condividere e modificare contenuti (documenti, note, idee) in modo collaborativo. Offre funzionalità di organizzazione, ricerca e integrazione con altri strumenti aziendali. Ideale per migliorare la collaborazione, aumentare la produttività e gestire le informazioni in modo efficace.
[^3]: Include la fornitura del servizo completo, dalla pianificazione e progettazione fino alla manutenzione e supporto continuo.
[^4]: **Amazon Web Services** è una piattaforma di servizi di cloud computing fornita da Amazon, che offre infrastruttura, piattaforma e software come servizio per costruire e gestire applicazioni nel cloud.
[^5]: Si è deciso di optare per questa soluzione in quanto, se il sistema di estrazione rispetta i vincoli di accuratezza descritti nelle _CoS_ (riferimento al documento CoS.pdf), è molto più veloce utilizzare il sitema e controllare a posteriori l'accuratezza piuttosto che estrarre i dati manualmente. 


