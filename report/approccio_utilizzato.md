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

#### 1. Primo meeting 03/04/2023

**Partecipanti**
- **HyperFlow** 
  - Theoden (Project Manager)
  - Faramir (Senior Data Scientist)
  - Gimli (Senior Cloud Engineer)
  - Gandalf (Senior Full Stack Developer)
- **Specifici**
  - Sauron (Business Unit Manager)
  - Angmar (IT Manager)
  - Peregrino Tuc (Project Manager)

**Contenuto del meeting**
Nel meeting si è discusso della necessità di _Specifici_, dello stato corrente e di alcune _CoS_. Viene inoltre introdotto il tema dei test, di come devono essere svolti e come recuperare i dati per i test della logica.

**Materiale prodotto a fronte del meeting e condiviso con _Specifici_**
Bozza di [POS](scoping/POS.html), [COS](scoping/CoS.html) e [Test](planning/test.html)


#### 2. Meeting Interno 08/04/2023
**Partecipanti**
- Theoden (Project Manager)
- Faramir (Senior Data Scientist)
- Gimli (Senior Cloud Engineer)
- Gandalf (Senior Full Stack Developer)


**Contenuto del meeting**
Discussione sulle modalità di sviluppo del sistema, sui rischi e sui possibili use cases.

**Materiale prodotto a fronte del meeting e condiviso con _Specifici_**
[Risk Analysis](scoping/risk_analysis.html), [Use Cases](scoping/use_cases.html) e [SWAT](scoping/SWAT.html)

#### 3. Secondo meeting 09/04/2023
**Partecipanti**

- **HyperFlow**
  - Theoden (Project Manager)
  - Faramir (Senior Data Scientist) 
  - Gimli (Senior Cloud Engineer)
  - Gandalf (Senior Full Stack Developer)
- **Specifici**
  - Angmar (IT Manager)
  - Peregrino Tuc (Project Manager)

**Contenuto del meeting**
Revisione e modifica dei documenti prodotti fino ad ora. Le modifiche sono nate da domande di chiarimento e proposte lato _HyperFlow_ e aggiornamenti lato _Specifici_. Accettazione del cliente del documento di [Risk Analysis](scoping/risk_analysis.html).

**Materiale prodotto a fronte del meeting e condiviso con _Specifici_**
Completamento di [POS](scoping/POS.html) e [COS](scoping/CoS.html), bozza del [RBS](scoping/RBS.html).

#### 5. Creazione del team
Theoden organizza il core team per lo sviluppo del sistema che coincide con il developer team.

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

#### 5. Mail interna 10/05/2023
Theoden invia i documenti prodotti ai nuovi componenti del team, che avranno il compito di sviluppare l'applicativo. Viene richiesto loro di leggerli e segnare eventuali domande da discutere in un meeting interno.

#### 4. Meeting Interno 13/05/2023
**Partecipanti**

- Theoden
- Faramir
- Gimli
- Gandalf
- Frodo
- Sam
- Bilbo
- Eowyn

**Contenuto del meeting**
Viene presentato il progetto alle figure non senior illustrando velocemente tutti i documenti prodotti fino ad ora. Le domande sorte sono state usate per ridefinire meglio i documenti o sono state segnate da chiedere a _Specifici_. Viene discusso quale PMLC utilizzare.

**Materiale prodotto a fronte del meeting e condiviso con _Specifici_**
[RBS](scoping/RBS.html) e decisione sul modello **lineare** come PMLC.

##### PMLC Model

Data la chiarezza del [RBS](scoping/RBS.html), in modo unanime si è optato per uno sviluppo **lineare**, in quanto _HyperFlow_ ha già realizzato sistemi per estrazione dati da documenti e ha competenza nelle tecnologie usate.
L'unico punto d'incertezza riguarda l'accuratezza dell'estrazione, per la quale è stato deciso di creare dei prototipi in modo da poter monitorare ed eventualmente cambiare in anticipo l'approccio utilizzato.

#### 5. Mail di conferma 14/05/2023
Peregrino Tuc invia una mail di accetazione dei documenti di [RBS](scoping/RBS.html) e del modello deciso per il PMLC a Theoden.

## Planning TODO inserire quando viene decisa la contingency di 3 settimane

#### 1. Meeting 15/05/2024

Inoltre si è introdotto l'argomento test per capire come effettuare i test sulla logica.

#### 1. Meeting Interno 15/05/2023

**Partecipanti**

- **gruppo 1**
  - Faramir
  - Frodo
  - Eowyn
- **gruppo 2**
  - Gimli
  - Sam
  - Bilbo
- **gruppo 3**
  - Gandalf 
  
**Contenuto del meeting**
Vengono effettuati due meeting separati in modo da sviluppare per gruppi il [WBS](planning/WBS.html) e successivamente il [PND](planning/PND.xlsx) e [Modalità Test](planning/test.html).

La scelta di task, dipendenze e durate è effettuata in ciascun gruppo: il collega senior effettua una proposta basata sulla sua esperienza e sui progetti precedenti che poi viene discussa con gli altri colleghi ma l'ultima parola spetta comunque a lui. In questo caso i giorni proposti per ciascuna attività si discostavano di poco quindi arrivare all'unanimità ha richiesto poco tempo.
Nel [PND](planning/PND.html) vengono definiti direttamente le relazioni tra _task_ e la loro durata.

**Materiale prodotto a fronte del meeting e condiviso con Theoden**
I [WBS](planning/WBS.html), [PND](planning/PND.html) e [Modalità Test](planning/test.html) divisi per gruppi.

##### Completamento documenti
Le parti sviluppate da ogni componente vengono unite da Theoden in un singolo documento per tipologia. Inoltre scrive una bozza del [Project Proposal](planning/project_proposal.html) e del [Project Scheduling](planning/project_scheduling.html). Tutto il material prodotto viene inviato ai membri del team in modo che possa essere revisionanto, commentato ed aggiornato successivamente.

#### 2. Meeting Interno 20/05/2023
**Partecipanti**

- Theoden
- Faramir
- Gimli
- Gandalf
- Frodo
- Sam
- Bilbo
- Eowyn

**Contenuto del meeting**
Vengono revisionati i file prodotti e vengono completati. 
  
**Materiale prodotto a fronte del meeting e condiviso con _Specifici_**
[WBS](planning/WBS.html), [PND](planning/PND.html), [Modalità Test](planning/test.html), [Project Proposal](planning/project_propostal.htmls) e [Project Scheduling](planning/project_scheduling.html)

## Launching

### Team
Il team che svilupperà il progetto è lo stesso definito durante la fase di _scoping_. Ogni sottogruppo lavora autonomamente e fa riferimento al collega _senior_ e al _project manager_ Theoden. 

|Membri          |Ruolo                      |Riferimento     |
|:--------------:|:-------------------------:|:--------------:|
|Gandalf         |Senion Full Stack Developer|Theoden         |
|Frodo e Eowyon  |Data Scientist             |Theoden, Faramir|
|Bilbo e Sam     |Cloud Architect            |Theoden, Gimli  |



### Project Definition Statement

Al termine delle fasi di _scoping_ e _planning_, una parte delle informazioni raccolte vengono
inserite da Theoden nel [Project Definition Statement](launching/PDS.html). Questo documento estende il [Project Overview
Statement](scoping/POS.html) e serve a tutto il team come linea guida da seguire durante lo sviluppo. 

### Qualità

Vengono adottate le pratiche presenti nel documento di [Piano di qualità](launching/quality.html)

### TODO Assegnazione responsabilità

### Regole operative

#### Gestione di decisioni, conflitti e problemi
Tutti gli elementi del team procedono in modo automo per lo sviluppo. Ogni decisione da prendere, conflitto o problema vengono gestiti nel seguente modo:

- **difficoltà bassa**: lo sviluppatore provvede in modo autonomo                                                                        
- **difficoltà media**: lo sviluppatore contatta altri membri (in questo caso al massimo uno) del suo gruppo via messaggio o tramite call
- **difficoltà alta**: lo sviluppatore contatta i suoi riferimenti con un processo di escalation tramite messaggio o call. Se il problema riguarda un gruppo diverso viene contattato il riferimento di quel gruppo. Se il problema riguarda il proprio gruppo e non viene trovata una soluzione si prova a contattare altri colleghi su altri progetti che abbiano o sappiano gestire quella problematica.

Nel caso ci fossero dei problemi che impattano sullo scope viene immediatamente conttato Peregrino Tuc, il _Project Manager_ di _Specifici_, in modo da, in base alla grandezza della problematica, risolvere via chat o fissando un meeting in cui includere gli interessati.

#### Definition of DONE

Ogni componente e l'intero sistema vengono definiti DONE una volta superati tutti i test sia in ambiente di test che di produzione.

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


