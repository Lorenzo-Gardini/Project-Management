<p style="text-align: right;">
  <img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/hyperflow_logo.png?raw=true" alt="Logo" style="width: 150px;"/>
</p>

## Prefazione
_HyperFlow_ è un'azienda che opera da anni nell'ambito del _Machine Learning_ e della _Hyper Automation_.
L'azienda _Specifici_ è da anni cliente di _HyperFlow_ che svolge il ruolo di azienda di consulenza. Questo permette di facilitare tutte le interazioni tra le due parti, dato che i vari responsabili si conoscono già. Inoltre, il team IT di _Specifici_ è qualificato, il che rende le richieste di progetto più dettagliate e chiare di altri clienti.

_HyperFlow_ ha già sviluppato per _Specifici_ altri sistemi di estrazione dati da documenti (principalmente Excel e CSV) su piattaforma _AWS_.

La la proposta di progetto è stata avanzata da _Specifici_.


## Scoping
In tutti i meeting con _Specifici_, Theoden, il PM, ricopre sia il ruolo di team leader che il ruolo di facilitatore mentre Faramir, Senior Data Scientist, di tecnografo. Tutti i meetings vengono effettuati in call su _Teams_.

### Ricezione della Request for Proposal da parte di Specifici 04/09/2023

**Riceventi**:

- Theoden (Project Manager)
- Faramir (Senior Data Scientist)
- Gimli (Senior Cloud Engineer)
- Gandalf (Senior Full Stack Developer)
- Eru Ilúvatar (Partner)
- Tom Bombadil (BU Manager)

**Dettagli**:

- ricezione dell'RFP: l'azienda _Specifici_ invia una RFP che include gli obiettivi generali, requisiti, e vincoli.
Analisi preliminare: Revisione delle esigenze di A per preparare una risposta preliminare.

Ogni interessato effettua autonomamente un'analisi dell'RFP.

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
- **definizione preliminare delle COS**
- **SWOT Analysis**: analisi di punti di forza, debolezze, opportunità e minacce
- **POS**: sintesi preliminare degli obiettivi del progetto e del contesto
- **organizzazione del meeting seguente**

**Documenti prodotti**:

- **[POS](scoping/POS.html) (da discutere)**
- **[SWOT Analysis](scoping/SWAT.html)**
- **[Risk Analysis](scoping/risks_analysis.html) (da discutere)**
- **[COS](scoping/risks_analysis.html) (da discutere)**
- **[RBS](scoping/RBS.html) (da discutere)**
- **definizione degli [Use Cases](scoping/use_cases.html) (da discutere)**

Tutti i documenti sono una prima bozza, che deve essere revisionata da _Speicifici_.

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

- assicurasi che siano stati compresi correttamente i requisiti e gli use cases
- allineare le aspettative rispetto alle COS
- identificare eventuali gap o malintesi prima di procedere alla fase di scoping dettagliato

**Argomenti trattati**:

- **discussione sul POS**: si presenta il POS creato a partire dal RFP
- **discussione sulla bozza delle COS**: si propone la bozza per verificare che sia allineata
- **discussione sulla bozza della risk analysis**: si presenta la bozza per verificare che sia allineata
- **discussione sugli use cases**
- **organizzazione del meeting seguente**

**Documenti aggiornati**:

- **[POS](scoping/POS.html)**
- **[Risk Analysis](scoping/risks_analysis.html)**
- **[COS](scoping/risks_analysis.html)**
- **[Use Cases](scoping/use_cases.html)**


### Secondo meeting di allineamento 13/07/2023
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
- decidere quale PMLC utilizzare

- **discussione RBS**: si presentano le macro attività individuate per lo sviluppo del sistema
- **discussione scelta PMLC**: una volta aggiornato l'RBS, viene deciso quale PMLC adottare 

**Documenti aggiornati**
- **[RBS](scoping/RBS.html)**

#### Project Management Life Cycle Model

Data la chiarezza del RBS, si è deciso in modo unanime per uno sviluppo **lineare**, questo grazie anche al fatto che _HyperFlow_ ha già realizzato sistemi per estrazione dati da documenti sempre per _Specifici_ e ha competenza nelle tecnologie usate.

## Planning

### Meeting per le attività - interno 15/05/2024

**Partecipanti**

- Theoden (Project Manager)
- Faramir (Senior Data Scientist) 
- Gimli (Senior Cloud Engineer)
- Gandalf (Senior Full Stack Developer)

**Argomenti trattati**:

- **WBS**: vengono decise le attività da fare a partire dal RBS 
- **test**: viene discusso su come testare il sistema usando come guida la risk analysis

**Documenti prodotti**:

- **[WBS](planning/WBS.html)**
- **[Test](planning/test.html) (da discutere)**

### Meeting allineamento per i test 18/07/2023

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

**Documenti aggiornati**
- **[Test](planning/test.html) (da discutere)**


#### Nota sul testing

Questa fase viene effettuata ora perchè il core team ha deciso fosse una la parte fondamentale per tutto lo sviluppo in modo da sia monitorare facilmente tutto il processo di sviluppo e le caratteristiche del sistema. Inoltre, avere dei buoni test sulla parte di logica, cioè quella che potrebbe avere più problemi, permette di anticipare di molto i eventuali ritardi.


### Creazione del team 19/07/2023
Il PM Theoden controlla le diponibilità degli sviluppatori e li seleziona per svolgere il lavoro. I nuovi membri vengono informati e viene chiesto loro di leggere la documentazione prodotta fino a questo momento. Il team al completo è composto da:

|Nome   |Posizione                        |Ruolo                                                                      |
|:-----:|:-------------------------------:|:-------------------------------------------------------------------------:|
|Theoden|Project Manager                  |Segue tutto lo sviluppo del progetto, gestisce le relazioni con _Specifici_|
|Faramir|Senior Data Scientist            |Figura di riferimento e supporto per la parte di logica                    |
|Gimli  |Senior Cloud Engineer, Team Lead |Figura di riferimento e supporto per la parte infrastrutturale             |
|Gandalf|Senion Full Stack Developer      |Si occuperà dell'intero sviluppo web                                       |
|Frodo  |Data Scientist                   |Si occuperà dello sviluppo della logica                                    |
|Eowyn  |Data Scientist                   |Si occuperà dello sviluppo della logica                                    |
|Bilbo  |Cloud Engineer                   |Si occuperà dello sviluppo dell'architettura                               |
|Sam    |Cloud Engineer                   |Si occuperà dello sviluppo dell'architettura                               |

Il team viene creato ora per poter calcolare le durate delle attività in modo più realistico perchè basate sulle proposte degli sviluppatori che dovranno svolgere i compiti. 

Vengono poi creati 3 sottogruppi in modo da potersi muovere autonomamente:

#### Teams
Ogni sottogruppo lavora autonomamente e fa riferimento al collega _senior_ e al _project manager_ Theoden. 

|Membri                  |Team           |Riferimento     |
|:----------------------:|:-------------:|:--------------:|
|Gandalf                 |Portali web    |Theoden         |
|Faramir, Frodo e Eowyon |Logica         |Theoden, Faramir|
|Gimli, Bilbo e Sam      |Infrastruttura |Theoden, Gimli  |

### Meeting calcolo tempistiche - interno 21/07/2023

Vengono effettuate 3 meeting diversi dividendo i membri per team

**Partecipanti**

- Team Logica
- Team Infrastruttura
- Team Portali Web
- Theoden

**Argomenti trattati**:

- **tempistiche e dipendenze**: per ogni attività nel WBS vengono definite, in base al gruppo corrispondente, le tempistiche e le dipedenze di ogni attività. Vengono anche segnati dei commenti sulle attività come indicazione per Theoden per creare il PND (e.g. competenze di uno sviluppatore su una data tecnologia)

**Documenti prodotti**:

- **[PND](planning/WBS.html)**
- **Project Scheduling** (per visualizzarlo importare il file [gantt.csv](planning/gantt.csv) sul sito [https://www.onlinegantt.com/#/gantt](https://www.onlinegantt.com/#/gantt) tramite il bottone Import/Export e poi Import From Excel File selezionando il file, nel caso allego lo [screenshot della pagina](images/GANTT.png))

#### Nota sulla scelta delle durate

Per ogni attività il collega senior di ciascun gruppo effettua una proposta basata sulla sua esperienza e sui progetti precedenti che poi viene discussa con gli altri colleghi ma l'ultima parola spetta comunque a lui. 

Per questo progetto, i giorni proposti per ciascuna attività si discostavano di poco quindi arrivare ad una decisione ha richiesto poco tempo in quanto i membri dei vari team hanno già esperienza sia sulle tecnologie usate che sulle modalità di sviluppo.

### Project Proposal 21/07/2023
Al termine delle fasi di Scoping e Planning viene redatta la [Project Proposal](planning/project_proposal.html). Questa contiene le informazioni principali raccolte e necessarie per procedere con lo sviluppo. Viene scritta da Theoden e mandata prima internamente per l'approvazione poi a Peregrino Tuc, PM di _Specifici_.


## Launching

### Project Definition Statement

Al termine delle fasi di _scoping_ e _planning_, una parte delle informazioni raccolte vengono
inserite da Theoden nel [Project Definition Statement](launching/PDS.html). Questo documento estende il POS e serve a tutto il team come linea guida da seguire durante lo sviluppo. 

### Piano di qualità

Vengono adottate le pratiche presenti nel documento di [Piano di qualità](launching/quality.html)

### Regole operative

#### Gestione di decisioni, conflitti e problemi
Tutti gli elementi del team procedono in modo automo per lo sviluppo. Ogni decisione da prendere, conflitto o problema vengono gestiti nel seguente modo:

- **difficoltà bassa**: lo sviluppatore provvede in modo autonomo                                                                        
- **difficoltà media**: lo sviluppatore contatta altri membri (in questo caso al massimo uno) del suo gruppo via messaggio o tramite call
- **difficoltà alta**: lo sviluppatore contatta i suoi riferimenti con un processo di escalation tramite messaggio o call. Se il problema riguarda un gruppo diverso viene contattato il riferimento di quel gruppo. Se il problema riguarda il proprio gruppo e non viene trovata una soluzione si prova a contattare altri colleghi su altri progetti che abbiano o sappiano gestire quella problematica.

Nel caso ci fossero dei problemi che impattano sullo scope viene immediatamente conttato Peregrino Tuc, il _Project Manager_ di _Specifici_, in modo da, in base alla grandezza della problematica, risolvere via chat o fissando un meeting in cui includere gli interessati.

#### Definition of DONE

Ogni componente e l'intero sistema vengono definiti DONE una volta superati tutti i test.

### Project Meetings

Vengono fissati diversi meetings:

- **daily meetings**: ogni gruppo, giornalmente, effettua un meeting con i propri riferimenti in modo da aggiornali sull'andamento dello sviluppo ed eventualmente discutere di problematiche
- **weekly meetings**: meetings settimanali con il cliente in cui partecipano tutti i gruppi. Si discute dello stato di avanzamento di tutto il progetto e di eventuali problematiche/cambiamenti/suggerimenti. Ai mettings partecipa per conto di _HyperFlow_ il _project manager_ Theoden e nel caso ci fossero questioni importanti da discutere anche i _senior developer_.

### Gestione dei cambi di scope

Per i cambiamenti di scope si `e deciso di adottare un metodo standard, seguendo
un processo tipico:

- **pianificazione del cambiamento**: viene definita la strategia per quanto riguarda le modifiche. I membri del team vengono informati affinché si preparino ad una eventuale discussione e/o all’implementazione delle modifiche potenzialmente approvate

- **revisione dei cambiamenti**: i cambiamenti vengono controllati e verificati dal _project manager_ con la partecipazione degli sviuppatori _senior_ e dei partecipanti del gruppo interessanto dalla modifica. I criteri di accettazione o respinta dipendono dall’impatto che questi avranno sull’azienda: si valutano costi di tempo, soldi, personale e qualità complessiva del prodotto finale.

- **implementazione, monitoraggio e controllo**: Le modifiche approvate vengono implementate dal team di progetto. Vengono svolte verifiche e controlli per evidenziare eventuali non-conformità, regressioni ed errori di processo. Vengono aggiornati i documenti e il calendario considerando le modifiche effettuate. Per questi casi _Specifici_ è disposto ad accettare una posticipazione della fine del progetto.

### Gestione delle comunicazioni

Le comunicazioni con il cliente avvengono i tre modalità:
- tramite chat o in call su _Teams_ per chiarire dubbi semplici
- tramite meeting settimanale tramite _Teams_
- tramite mail per le comunicazioni importanti, scambi di file. Importante mettere in CC i propri referenti.

Le comunicazioni tra colleghi invece avvengono sempre tramite chat o in call su _Teams_

### Gestione delle risorse

TODO over allocation

#### Slittamento data di fine progetto

Considerando le 3 settimane di contingenza contrattate si ha tempo per gestire eventuali problematiche. Questo dovrebbe consentire di finire il progetto in tempo.

#### Straordinari

Non ci sarà molto probabilmente la necessità di ricorrere a straordinari del personale. Nel caso si verificasse la necessità, si prevede che non saranno ingenti.

### Work packages

I task sono stati raggruppati per tipologia (e.i. logica, infrastruttura etc.) che corrispondono alle milestone predefinite. Dato che il raggruppamento è gia stato fatto in precedenza fare riferimento al file [PND](planning/PND.xlsx) e alla sezione di "Assegnazione responsabilità" per ogni task.

## Monitoring

Come menzionato, ogni giorno si tengono i _Daily Meeting_ per monitorare e aggiornare i componenti (se ci sono) del gruppo e i propri referenti. Ogni giorno, i
membri del team di sviluppo devono aggiornare lo stato dei task a cui stanno lavorando.
Durante i _Review Meeting_ settimanali, si controlla lo stato di avanzamento nel _Gantt_. In caso di ritardi rispetto al piano, si riorganizza il lavoro tra i membri del team per recuperare le tempistiche. Se i ritardi persistono anche nelle settimane successive viene utilizzata la contingency fornita di 3 settimane.
Grazie alla pianificazione, è possibile, in casi molto estremi di ritardo, schedulare i test in modo che vengano effettuati di notte in modo automatico risparmiando tempo di lavoro.

### Aggiunte


