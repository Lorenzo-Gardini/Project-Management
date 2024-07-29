<p style="text-align: right;">
  <img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/hyperflow_logo.png?raw=true" alt="Logo" style="width: 150px;"/>
</p>

## Prefazione
_HyperFlow_ è un'azienda che opera da anni nell'ambito del _Machine Learning_ e della _Hyper Automation_.
L'azienda _Specifici_ è da anni cliente di _HyperFlow_ che svolge il ruolo di azienda di consulenza. Questo permette di facilitare tutte le interazioni tra le due parti, dato che i vari responsabili si conoscono già. Inoltre, il team IT di _Specifici_ è qualificato, il che rende le richieste di progetto più dettagliate e chiare di altri clienti.

_HyperFlow_ ha già sviluppato per _Specifici_ altri sistemi di estrazione dati da documenti (principalmente Excel e CSV) su piattaforma _AWS_.


## Scoping
In tutti i meeting con _Specifici_, Theoden, il PM, ricopre sia il ruolo di team leader che il ruolo di facilitatore mentre Faramir, Senior Data Scientist, di tecnografo.

#### 1. Primo meeting 03/04/2024

**Partecipanti**
- **HyperFlow**: 
  - Theoden (Project Manager)
  - Faramir (Senior Data Scientist)
  - Gimli (Senior Cloud Architect)
  - Gandalf (Senior Full Stack Developer)
- **Specifici**: 
  - Sauron (Business Unit Manager)
  - Angmar (IT Manager)
  - Peregrino Tuc (Project Manager)

**Contenuto del meeting**
Nel meeting si è discusso della necessità di _Specifici_, dello stato corrente e di alcune _CoS_. Viene inoltre introdotto il tema dei test, di come devono essere svolti e come recuperare i dati per i test della logica.

**Materiale prodotto a fronte del meeting e condiviso con _Specifici_**
Bozza di [POS](scoping/POS.html), [COS](scoping/CoS.html) e [Test](planning/test.html)


#### 2. Meeting Interno 08/04/2024
**Partecipanti**
- Theoden (Project Manager)
- Faramir (Senior Data Scientist)
- Gimli (Senior Cloud Architect)
- Gandalf (Senior Full Stack Developer)


**Contenuto del meeting**
Discussione sulle modalità di sviluppo del sistema, sui rischi e sui possibili use cases.

**Materiale prodotto a fronte del meeting e condiviso con _Specifici_**
[Risk Analysis](scoping/risk_analysis.html), [Use Cases](scoping/use_cases.html) e [SWAT](scoping/SWAT.html)

#### 3. Secondo meeting 09/04/2024
**Partecipanti**
- **HyperFlow**: 
  - Theoden (Project Manager)
  - Faramir (Senior Data Scientist) 
  - Gimli (Senior Cloud Architect)
  - Gandalf (Senior Full Stack Developer)
- **Specifici**: 
  - Angmar (IT Manager)
  - Peregrino Tuc (Project Manager)

**Contenuto del meeting**
Revisione e modifica dei documenti prodotti fino ad ora. Le modifiche sono nate da domande di chiarimento e proposte lato _HyperFlow_ e aggiornamenti lato _Specifici_. Accettazione del cliente del documento di [Risk Analysis](scoping/risk_analysis.html).

**Materiale prodotto a fronte del meeting e condiviso con _Specifici_**
Completamento di [POS](scoping/POS.html) e [COS](scoping/CoS.html), bozza del [RBS](scoping/RBS.html).

#### 5. Creazione del team
Theoden organizza il team per lo sviluppo del sistema. 

|Nome   |Posizione                  |Ruolo                                                                      |
|:-----:|:-------------------------:|:-------------------------------------------------------------------------:|
|Theoden|Project Manager            |Segue tutto lo sviluppo del progetto, gestisce le relazioni con _Specifici_|
|Faramir|Senior Data Scientist      |Figura di riferimento e supporto per la parte di logica                    |
|Gimli  |Senior Cloud Engineer      |Figura di riferimento e supporto per la parte infrastrutturale             |
|Gandalf|Senion Full Stack Developer|Si occuperà dell'intero sviluppo web                                       |
|Frodo  |Data Scientist             | Si occuperà dello sviluppo della logica                                   |
|Eowyn  |Data Scientist             | Si occuperà dello sviluppo della logica                                   |
|Bilbo  |Cloud Architect            | Si occuperà dello sviluppo dell'architettura                              |
|Sam    |Cloud Architect            | Si occuperà dello sviluppo dell'architettura                              |

#### 5. Mail interna 10/05/2024
Theoden invia i documenti prodotti ai nuovi componenti del team, che avranno il compito di sviluppare l'applicativo. Viene richiesto loro di leggerli e segnare eventuali domande da discutere in un meeting interno.

#### 4. Meeting Interno 13/05/2024
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

#### 5. Mail di conferma 14/05/2024
Peregrino Tuc invia una mail di accetazione dei documenti di [RBS](scoping/RBS.html) e del modello deciso per il PMLC a Theoden.

## Planning

#### 1. Meeting 15/05/2024

Inoltre si è introdotto l'argomento test per capire come effettuare i test sulla logica.

#### 1. Meeting Interno 15/05/2024 

**Partecipanti**
- **gruppo 1**:
  - Faramir
  - Frodo
  - Eowyn
- **gruppo 2**:
  - Gimli
  - Sam
  - Bilbo
- **gruppo 3**
  - Gandalf 
  
**Contenuto del meeting**
Vengono effettuati due meeting separati in modo da sviluppare per gruppi il [WBS](planning/WBS.html) e successivamente il [PND](planning/PND.xlsx) e i [Test](planning/test.html).

La scelta di task, dipendenze e durate è effettuata in ciascun gruppo: il collega senior effettua una proposta che poi viene discussa con gli altri colleghi ma l'ultima parola spetta comunque a lui.
Nel [PND](planning/PND.html) vengono definiti direttamente le relazioni tra _task_ e la loro durata.

**Materiale prodotto a fronte del meeting e condiviso con Theoden**
I [WBS](planning/WBS.html), [PND](planning/PND.html) e [Test](planning/test.html) divisi per gruppi.

##### Completamento documenti
Le parti sviluppate da ogni componente vengono unite da Theoden nei vari documenti documento. Inoltre scrive una bozza del [Project Proposal](planning/project_proposal.html) e del [Project Scheduling](planning/project_scheduling.html). Tutto il material prodotto viene inviato ai membri del team in modo che possa essere revisionanto, commentato ed aggiornato successivamente.

#### 2. Meeting Interno 20/05/2024
**Partecipanti**
- Theoden
- Faramir
- Gimli
- Gandalf
- Frodo
- Sam
- Bilbo
- Eowyn
  
**Materiale prodotto a fronte del meeting e condiviso con _Specifici_**
[WBS](planning/WBS.html), [PND](planning/PND.html), [Project Proposal](planning/project_propostal.htmls) e [Project Scheduling](planning/project_scheduling.html)

### Aggiunte


