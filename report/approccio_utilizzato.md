<p style="text-align: right;">
  <img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/hyperflow_logo.png?raw=true" alt="Logo" style="width: 150px;"/>
</p>

## Prefazione
_HyperFlow_ è un'azienda multinazionale che opera nell'ambito del _Machine Learning_ e della _Hyper Automation_. È da anni consulente presso l'azienda _Specifici_. 

I rapporti già consolidati da tempo permettono interazioni più facilitate tra le due parti. Inoltre, il team IT di _Specifici_ è qualificato, il che rende le richieste di progetto più concrete e dettagliate.

_HyperFlow_ ha sviluppato, tra i vari progetti per _Specifici_, sistemi di estrazione dati da documenti (principalmente Excel e CSV) su piattaforma _AWS_.

### Ricezione della Request for Proposal da parte di Specifici 04/09/2023

**Destinatari**:

- Theoden (Project Manager)
- Faramir (Senior Data Scientist)
- Gimli (Senior Cloud Engineer)
- Gandalf (Senior Full Stack Developer)
- Eru Ilúvatar (Partner)
- Tom Bombadil (BU Manager)

**Dettagli**:

- ricezione dell'RFP: l'azienda _Specifici_ invia una RFP che include gli obiettivi generali, requisiti, e vincoli
- analisi preliminare: revisione delle esigenze di _Specifici_ per preparare una risposta preliminare.

Ogni interessato effettua autonomamente un'analisi dell'RFP.

## Scoping
In tutti i meeting con _Specifici_, Theoden, il PM, ricopre sia il ruolo di team leader che il ruolo di facilitatore mentre Faramir, Senior Data Scientist, di tecnografo. Tutti i meetings vengono effettuati in call su _Teams_.

### Meeting di inizio progetto - interno 06/09/2023

**Partecipanti**:

- Theoden (Project Manager)
- Faramir (Senior Data Scientist)
- Gimli (Senior Cloud Engineer)
- Gandalf (Senior Full Stack Developer)
- Eru Ilúvatar (Partner)
- Tom Bombadil (BU Manager)

**Argomenti trattati**:

- **revisione dell'RFP**
- **analisi preliminare del progetto**: valutazione della fattibilità tecnica e delle risorse necessarie
- **definizione preliminare delle CoS**
- **SWOT e Risk Analysis**: analisi di punti di forza, debolezze, opportunità e minacce
- **POS**: sintesi preliminare degli obiettivi del progetto e del contesto

**Documenti prodotti**:

- **[POS](scoping/POS.html)** (da discutere)
- **[SWOT Analysis](scoping/SWOT.html)**
- **[Risk Analysis](scoping/risks_analysis.html)**(da discutere)
- **[CoS](scoping/CoS.html)** (da discutere)
- **definizione degli [Use Cases](scoping/use_cases.html)** (da discutere)

Tutti i documenti sono una prima bozza, che deve essere revisionata da _Specifici_.



### Primo meeting di allineamento 12/09/2023
**Partecipanti**:

- **HyperFlow**
  - Theoden (Project Manager)
  - Faramir (Senior Data Scientist) 
  - Gimli (Senior Cloud Engineer)
  - Gandalf (Senior Full Stack Developer)
- **Specifici**
  - Angmar (IT Manager)
  - Peregrino Tuc (Project Manager)
  - Sauron (Partner)

**Obiettivi del meeting**:

- assicurasi che siano stati compresi correttamente obbiettivi, requisiti e gli _use cases_
- allineare le aspettative rispetto alle CoS
- identificare eventuali gap o malintesi prima di procedere alla fase di scoping dettagliato

**Argomenti trattati**:

- **discussione sul POS**: si presenta il POS creato a partire dal RFP
- **discussione sulla bozza delle CoS**: si propone la bozza per verificare che sia allineata
- **discussione sulla bozza della risk analysis**: si presenta la bozza per verificare che sia allineata
- **discussione sugli use cases**

**Documenti aggiornati**:

- **[POS](scoping/POS.html)**
- **[Risk Analysis](scoping/risks_analysis.html)**
- **[CoS](scoping/CoS.html)**
- **[Use Cases](scoping/use_cases.html)**

**Documenti prodotti**:
- **[RBS](scoping/RBS.html)** (da discutere)


### Secondo meeting di allineamento 13/09/2023
**Partecipanti**:

- **HyperFlow**
  - Theoden (Project Manager)
  - Faramir (Senior Data Scientist) 
  - Gimli (Senior Cloud Engineer)
  - Gandalf (Senior Full Stack Developer)
- **Specifici**
  - Angmar (IT Manager)
  - Peregrino Tuc (Project Manager)
  - Sauron (Partner)

**Obiettivi del meeting**:

- assicurasi che siano stati compresi correttamente le attività da svolgere
- identificare eventuali gap o malintesi prima di procedere alla fase di scoping dettagliato
- decidere quale **PMLC** utilizzare

- **discussione RBS**: si presentano le macro attività individuate per lo sviluppo del sistema
- **discussione scelta PMLC**: una volta aggiornato l'RBS, viene deciso quale PMLC adottare 

**Documenti aggiornati**

- **[RBS](scoping/RBS.html)**

#### Project Management Life Cycle Model

Data la chiarezza dell'RBS, si è deciso in modo unanime per uno sviluppo **lineare**, questo grazie anche al fatto che _HyperFlow_ ha già realizzato sistemi per estrazione dati da documenti sempre per _Specifici_ e ha competenza nelle tecnologie usate.

## Planning

### Meeting per le attività - interno 15/09/2024

**Partecipanti**

- Theoden (Project Manager)
- Faramir (Senior Data Scientist) 
- Gimli (Senior Cloud Engineer)
- Gandalf (Senior Full Stack Developer)

**Argomenti trattati**:

- **WBS**: vengono decise le attività da fare a partire dall'RBS 
- **test**: viene discusso su come testare il sistema usando come guida la _Risk Analysis_ e le CoS
- **costi**: vengono discussi i costi dei servizi e dei bonus ai membri del team

**Documenti prodotti**:

- **[WBS](planning/WBS.html)**
- **[Test](planning/test.html)** (da discutere)
- **[Cost Management](planning/cost_management.html)** (da discutere)

### Meeting allineamento per i test e i costi 18/09/2023

**Partecipanti**

- **HyperFlow**
  - Theoden (Project Manager)
  - Faramir (Senior Data Scientist) 
  - Gimli (Senior Cloud Engineer)
  - Gandalf (Senior Full Stack Developer)
- **Specifici**
  - Angmar (IT Manager)
  - Peregrino Tuc (Project Manager)

**Argomenti trattati**:

- **test**: viene discusso come effettuare i test, vengono mostrate le proposte elaborate e vengono richiesti gli accessi ai dati della piattaforma attuale
- **costi**: viene discusso il calcolo del costo del sistema, sulla richiesta di risparmio sui test massivi e sulla **scope bank**

**Documenti aggiornati**

- **[Test](planning/test.html)**
- **[Cost Management](planning/cost_management.html)**


#### Nota sul testing

Questa fase viene effettuata ora perché il core team ha deciso fosse una parte fondamentale per tutto lo sviluppo in modo da monitorare facilmente tutto il processo di sviluppo e le caratteristiche del sistema. Inoltre, avere dei buoni test sulla parte di logica, cioè quella che potrebbe avere più problemi, permette di anticipare di molto gli eventuali ritardi.


### Creazione del team 19/09/2023
Il PM Theoden controlla le disponibilità degli sviluppatori e li seleziona per svolgere il lavoro. I nuovi membri vengono informati e viene chiesto loro di leggere la documentazione prodotta fino a questo momento. Il team al completo è composto da:

|Nome   |Posizione                        |Ruolo                                                                      |
|:-----:|:-------------------------------:|:-------------------------------------------------------------------------:|
|Theoden|Project Manager                  |Segue tutto lo sviluppo del progetto, gestisce le relazioni con _Specifici_|
|Faramir|Senior Data Scientist            |Figura di riferimento e supporto per la parte di logica                    |
|Gimli  |Senior Cloud Engineer, Team Lead |Figura di riferimento e supporto per la parte infrastrutturale             |
|Gandalf|Senior Full Stack Developer      |Si occuperà dell'intero sviluppo web                                       |
|Frodo  |Data Scientist                   |Si occuperà dello sviluppo della logica                                    |
|Eowyn  |Data Scientist                   |Si occuperà dello sviluppo della logica                                    |
|Bilbo  |Cloud Engineer                   |Si occuperà dello sviluppo dell'architettura                               |
|Sam    |Cloud Engineer                   |Si occuperà dello sviluppo dell'architettura                               |

Il team viene creato ora per poter calcolare le durate delle attività in modo più realistico, perché basate sulle proposte degli sviluppatori che dovranno svolgere i compiti. 

Vengono poi creati 3 _teams_ in base ai compiti:

#### Teams
Ogni sottogruppo lavora autonomamente e fa riferimento al collega _senior_ e al _project manager_ Theoden. 

|Membri                  |Team           |Riferimento     |
|:----------------------:|:-------------:|:--------------:|
|Gandalf                 |Portali web    |Theoden         |
|Faramir, Frodo e Eowyon |Logica         |Theoden, Faramir|
|Gimli, Bilbo e Sam      |Infrastruttura |Theoden, Gimli  |

### Meeting calcolo tempistiche - interno 21/09/2023

Vengono effettuate 3 meeting diversi dividendo i membri per team

**Partecipanti**

- Team Logica
- Team Infrastruttura
- Team Portali Web
- Theoden

**Argomenti trattati**:

- **tempistiche e dipendenze**: per ogni attività nel WBS vengono definite, in base al gruppo corrispondente, le tempistiche e le dipedenze di ogni attività. Vengono anche segnati dei commenti sulle attività come indicazione per Theoden per creare il PND (e.g. competenze di uno sviluppatore su una data tecnologia, disponbilità etc.)

**Documenti prodotti**:

- **[PND](planning/PND.html)**
- **Project Scheduling** (per visualizzarlo importare il file [gantt.csv](files/gantt.csv) sul sito [https://www.onlinegantt.com/#/gantt](https://www.onlinegantt.com/#/gantt) tramite il bottone Import/Export e poi Import From Excel File selezionando il file, nel caso allego lo [screenshot della pagina](images/GANTT.png))

#### Modalità della scelta delle durate dei task

Per ogni attività, il collega senior di ciascun gruppo propone una soluzione basata sulla propria esperienza e sui progetti precedenti della stessa tipologia. La proposta viene poi discussa con gli altri membri del team, ma la decisione finale spetta comunque a lui. 

Per questo progetto, i giorni proposti per ciascuna attività differivano solo leggermente, quindi è stato facile arrivare a una decisione. I membri dei vari team hanno già esperienza sia con le tecnologie utilizzate che con le modalità di sviluppo, il che ha ridotto significativamente i tempi di discussione.

### Project Proposal 22/09/2023
Al termine delle fasi di Scoping e Planning viene redatta la [Project Proposal](planning/project_proposal.html). Questa contiene le informazioni principali raccolte e necessarie per procedere con lo sviluppo. Viene scritta da Theoden e mandata prima internamente per l'approvazione poi a Peregrino Tuc, PM di _Specifici_.


## Launching

### Project Definition Statement

Al termine delle fasi di _scoping_ e _planning_, una parte delle informazioni raccolte vengono inserite da Theoden nel [Project Definition Statement](launching/PDS.html). Questo documento estende il POS e serve a tutto il team come linea guida da seguire durante lo sviluppo. 

### Piano di qualità

Vengono adottate le pratiche presenti nel documento di [Piano di qualità](launching/quality.html)

### Assegnazione responsabilità

Le responsabilità per le attività sono presenti come matrice nel file [RASCI.xlsx](files/RASCI.xlsx)

### Regole operative

#### Gestione di decisioni, conflitti e problemi
Tutti gli elementi del team procedono in modo autonomo per lo sviluppo. Ogni decisione da prendere, conflitto o problema vengono gestiti nel seguente modo:

- **difficoltà bassa**: lo sviluppatore provvede in modo autonomo                                                                        
- **difficoltà media**: lo sviluppatore contatta altri membri (in questo caso al massimo uno) del suo gruppo via messaggio o tramite call
- **difficoltà alta**: lo sviluppatore contatta i suoi riferimenti con un processo di escalation tramite messaggio o call. Se il problema riguarda un gruppo diverso viene contattato il collega senior di quel gruppo. Se il problema riguarda il proprio gruppo e non viene trovata una soluzione si prova a contattare altri colleghi su altri progetti che abbiano o sappiano gestire quella problematica
- **difficoltà massima**: si attua una politica di _escalation_ contattando figure con un ruolo maggiore come _BU Manager_ o _Partner_

Nel caso ci fossero dei problemi che impattano sullo scope viene immediatamente contattato Peregrino Tuc, il _Project Manager_ di _Specifici_, in modo da, in base alla grandezza della problematica, risolvere via chat o fissando un meeting in cui includere gli interessati.

#### Definition of DONE

Ogni componente e l'intero sistema vengono definiti **DONE** una volta che ciascuno di essi supera tutti i suoi test.

### Project Meetings

Vengono fissati diversi meetings:

- **daily meetings**: ogni gruppo, giornalmente, effettua un meeting in modo da tenersi aggiornato sull'andamento dello sviluppo ed eventualmente discutere di problematiche
- **weekly meetings**: meetings settimanali con il cliente in cui partecipano tutti i gruppi. Si discute dello stato di avanzamento di tutto il progetto e di eventuali problematiche, cambiamenti e suggerimenti. Ai mettings partecipa per conto di _HyperFlow_ il _project manager_ Theoden e gli sviluppatori, nel caso ci fossero questioni importanti da discutere anche i _senior developer_.

### Gestione dei cambi di scope

Per i cambiamenti di scope si è deciso di adottare un metodo standard:

- **pianificazione del cambiamento**: viene definita la strategia per quanto riguarda le modifiche. I membri del team vengono informati affinché si preparino ad una eventuale discussione e/o all'implementazione delle modifiche potenzialmente approvate
- **revisione dei cambiamenti**: i cambiamenti vengono controllati e verificati dal _project manager_ con la partecipazione degli sviluppatori _senior_ e dei partecipanti del gruppo interessato dalla modifica. I criteri di accettazione o respinta dipendono dall'impatto che questi avranno sull'azienda: si valutano costi di tempo, soldi, personale e qualità complessiva del prodotto finale. Si controlla la scope bank per ridefinire le priorità 
- **implementazione, monitoraggio e controllo**: le modifiche approvate vengono implementate dal team di progetto. Vengono svolte verifiche e controlli per evidenziare eventuali non-conformità, regressioni ed errori di processo. Vengono aggiornati i documenti e il calendario considerando le modifiche effettuate. _Specifici_ è disposto ad accettare una eventuale posticipazione della fine del progetto

### Gestione delle comunicazioni

Le comunicazioni con il cliente avvengono i tre modalità:

- tramite chat o in call su _Teams_ per chiarire dubbi semplici
- tramite meeting settimanale tramite _Teams_
- tramite mail per le comunicazioni importanti, scambi di file. Importante mettere in CC i propri referenti

Le comunicazioni tra colleghi invece avvengono sempre tramite chat o in call su _Teams_

### Gestione delle risorse

#### Over allocation
Le risorse che sono state assegnate a questo progetto saranno parzialmente impegnate in altri progetti.

#### Slittamento data di fine progetto

Considerando i quindici giorni lavorativi di contingenza contrattate si ha tempo per gestire eventuali problematiche. Questo dovrebbe consentire di finire il progetto in tempo.

#### Straordinari

Non ci sarà molto probabilmente la necessità di ricorrere a straordinari del personale. Nel caso si verificasse la necessità, si prevede che non saranno ingenti.


## Monitoring e Controlling

Il progetto è di tipo tradizionale, anche se non tutti i task del WBS possiedono una dipendenza stretta fra i loro precedenti. Questo implica il fatto che l'esecuzione dei diversi tasks sia per lo più sequenziale.

### Modalità di reporting

Vengono usati diversi tool per il monitoraggio:

- **project status meetings**: _Daily Meetings_ interni e _Review Meeting_ con _Specifici_
- **gantt chart**: viene utilizzato il Gantt nella versione _Gantt Chart Project Status Report_ per verificare che tutti i task rispettino i giorni prestabiliti
- **variance reports**: la scelta è basata sul fatto che si ha un interesse su cosa è andato storto durante lo svolgimento dei diversi tasks, non solamente riguardo quelli più rilevanti. Anche se generalmente i tasks hanno importanza diversa fra loro, può capitare che il non completamento di un task non permetterebbe di iniziare quello successivo
- **cumulative reports**: tabelle molto semplici su fogli di calcolo aggiornate frequentemente, in cui vengono mostrati, per ogni task da fare, lo stato, la %completamento, le responsabilità ed eventuali note. Servono per la gestione interna del team

### Monitoraggio dei costi

Tutti i costi vengono monitorati settimanalmente utilizzando il resoconto generato da AWS. Vengono usate le accortezze elencate nel documento di [Cost Management](planning/cost_management.html). 

### Creeps 

I _Daily Meetings_ e la disponibilità di figure senior come riferimenti all'interno del team è volta ad evitare il verificarsi di feature creep, effort creep ed hope creep.

In particolare, è importante gestire la presenza di scope creep, affinché la gestione di progetto prosegua in maniera corretta. Gestire bene questa componente presuppone che nel team lo scopo del progetto sia ben chiaro, e che venga evitata qualsiasi imprecisione o vaghezza di base. La presenza di scope creep è improbabile, ma nel caso ci fosse si attuano tutti i punti descritti nella parte di _Gestione dei cambi di scope_.

### Issue Log

Si utilizza una bacheca di _Jira_, condivisa tra i membri del team, che contiene le liste "Todo, In Progress, Done, In Hold". Ogni issue viene creata come una "scheda" nella lista "Todo" e tenuta aggiornata. Ogni scheda contiene titolo, descrizione e proprietari/o. Il sistema è stato configurato in modo da mandare in automatico una mail al proprietario della issue ad ogni sua creazione o modifica.

### Project status meetings

Tutte le modalità di organizzazione dei meeting sono dettagliati alla sezione "Project Meetings" del launching.

### Controlling

Fino adesso si è discusso di alcune tecniche di prevenzione (sopra elencate), ora è necessario definire come reagire al verificarsi di situazioni che potrebbero compromettere la corretta riuscita del progetto. Tutte le problematiche di entità minore inerenti all'implementazione dei tasks possono essere discusse direttamente tra il team di sviluppo durante i meeting previsti. Nel caso in cui fosse necessario gestire problematiche maggiori andrebbero seguite le procedure elencate alla sezione "Regole operative" del launching. Il verificarsi di creep potrebbe portare all'aggiunta di nuove attività: queste verranno gestite attraverso dei meeting continui di aggiornamento sullo stato del progetto.

## Closing

### Acceptance 

Durante tutto il periodo di sviluppo, sono stati effettuati tutti i test previsti per verificare il
corretto funzionamento del sistema e ottenere feedback per risolvere eventuali problematiche impreviste. Oltre al corretto funzionamento del sistema, sono state valutate anche le performance della pipeline e del sito, misurando la loro efficienza nell'esecuzione delle varie operazioni principali e garantendo che soddisfino le aspettative di velocità e reattività che erano state concordate durante la fase di analisi dei requisiti.

### Release e collaudo

La fase di release finale viene preceduta da una fase di circa 4 mesi in qui il programma viene accuratamente testato, sia lato azienda sia dai clienti che inviano il feedback tramite popup. In questa fase la release è caratterizzata da un approccio di tipo _parallel_ in cui la vecchia soluzione è ancora operativa mentre si prova e utilizza la nuova. Questa fase di test permetterà quindi di individuare tempestivamente eventuali bug e problematiche. Per ogni problema riscontrato viene applicata la modifica, testata in ambiente di test, e successivamente rilasciata e testata in ambiente di produzione.

L'approccio utilizzato per il deploy del sistema è quello del _Continuous Deployment_. Grazie all'utilizzo di metodologie di _Continuous Integration_, il rilascio di nuove versioni corrette avviene attraverso un workflow automatizzato. Questo approccio consente rilasci veloci e frequenti a fronte di correzioni di eventuali errori dopo il rilascio del sistema.

### Attuazione

Quando la soluzione verrà considerata stabile e saranno trascorsi i 4 mesi di collaudo si provvederà a disabilitare i popup dei feedback utenti e verrà utilizzato solamente il sistema automatico per i documenti _CAI_.

## Project Notebook

- Scoping:
  - [POS](scoping/POS.html)
  - [CoS](scoping/CoS.html)
  - [RBS](scoping/RBS.html)
  - [Risk Analysis](scoping/risk_analysis.html)
  - [SWOT](scoping/SWOT.html)
  - [Use Cases](scoping/use_cases.html)

- Planning:
  - [Cost Management](planning/cost_management.html)
  - [PND](planning/PND.html)
  - [Project Proposal](planning/project_proposal.html)
  - [Test](planning/test.html)
  - [WBS](planning/WBS.html)

- Launching:
  - [PDS](launching/PDS.html)
  - [Quality](launching/quality.html)

- File:
  - [Architettura](files/architecture.drawio)
  - [GANTT](files/gantt.csv)
  - [PND grafico](files/PND.drawio) e [PND Excel](files/PND.xlsx)
  - [RASCI](files/RASCI.xlsx)

## Tecnologie utilizzate

- **Draw.io** per generare gli schemi dell'infrastruttura e del PND
- **Microsoft Excel** per generare diversi documenti
- **onlinegantt.com** per generare il GANTT
- **GitHub + workflow + Pandoc** per generare le pagine in html
- **ChatGPT** per la formattazione e correzione del testo


